# coding=utf-8

"""
http://www.open-open.com/lib/view/open1419575745546.html
"""

import getpass

from fabric.api import *
from fabric.colors import *
from fabric.context_managers import *

import template_parser

# Define some vars
tips_string = '----------------------------------------'


# Set global env
env.hosts = ['192.168.1.100']

default_user = 'syphrd'
default_password = '123456'
env_user = raw_input("Please input the remote username for %s (default username is %s): "
                     % (env.hosts[0], default_user))
env_password = getpass.getpass("Please input the remote user's password for %s (default password is %s): "
                               % (env.hosts[0], default_password))

if not env_user:
    env_user = default_user
if not env_password:
    env_password = default_password

env.user = env_user
env.password = env_password

logstash_hosts = (env.hosts[0], )
elasticsearch_hosts = (env.hosts[0], )
kibana_hosts = (env.hosts[0], )

# global var
home_dir = '/home/%s' % env_user
elk_home_dir = '%s/elk' % home_dir

jdbc_conf = {
    'elk_home_dir': elk_home_dir,
    'jdbc_connection_string': 'jdbc:mysql://192.168.1.198:3306/dataocean_v2',
    'jdbc_user': 'dev',
    'jdbc_password': '123456',
    'statement': 'select * from do_charge_record WHERE id > :sql_last_value'
}


def create_dir_structure():
    """
    创建elk部署的目录结构
      ~/elk
         |- etc                     配置文件
           |- logstash              logstash的配置文件
           |- elasticsearch         elasticsearch的配置文件
           |- kibana                kibana的配置文件
         |- soft                    软件包
         |- drivers                 驱动程序，如jar包
         |- logstash                存放logstash
         |- elasticsearch           存放elasticsearch
         |- kibana                  存放kibana
    :return:
    """
    elk_home_sub_dir = [
        {
            'name': 'etc',
            'children': ['logstash', 'elasticsearch', 'kibana']
        },
        {
            'name': 'soft'
        },
        {
            'name': 'drivers'
        },
        {
            'name': 'logstash'
        },
        {
            'name': 'elasticsearch'
        },
        {
            'name': 'kibana'
        },
        {
            'name': 'jvm'
        },
        {
            'name': 'logs'
        },
        {
            'name': 'data'
        },
    ]

    def _trans_tpl(tpl, *args):
        return tpl % args

    run(_trans_tpl("if [ ! -d '%s' ]; then mkdir %s; fi", elk_home_dir, elk_home_dir))

    for sub_dir in elk_home_sub_dir:
        assert 'name' in sub_dir.keys()
        sub_path = '%s/%s' % (elk_home_dir, sub_dir.get('name'))
        run(_trans_tpl("if [ ! -d '%s' ]; then mkdir %s; fi", sub_path, sub_path))
        green('- Create directory %s' % sub_path)

        if 'children' in sub_dir.keys():
            for sd in sub_dir.get('children'):
                sd_path = '%s/%s' % (sub_path, sd)
                run(_trans_tpl("if [ ! -d '%s' ]; then mkdir %s; fi", sd_path, sd_path))
                green('- Create directory %s' % sd_path)


def check_java():
    """
    check java version, must be >= 1.8
    :return:
    """
    java_version = run("java -version 2>&1 | awk 'NR==1{ gsub(/\"/,\"\"); print $3 }'")
    green('java version is: ' + java_version)
    if not java_version.startswith('1.8.0'):
        green("%s\nUpload java package to remote server" % tips_string)
        print "%s\nUpload java package to remote server" % tips_string
        with cd(elk_home_dir):
            put("soft/jdk-8u11-linux-x64.tar.gz", 'soft/', mode=0755)
            run('tar zxvf soft/jdk-8u11-linux-x64.tar.gz -C jvm/')

            java_home_path = '%s/jvm/jdk1.8.0_11' % elk_home_dir

        # with cd(home_dir):
        #     template_parser.write_etc_to_local_file('export_jdk.tpl', 'export_jdk.sh', **{'jdk_home': java_home_path})
        #     put('config/renders/export_jdk.sh', './', mode=0755)
        #     run('./export_jdk.sh')
        #     run('source .bashrc')


@hosts(logstash_hosts)
def deploy_logstash():

    with cd(elk_home_dir):
        # 上传并解压
        put('soft/logstash-5.2.2.zip', 'soft', mode=0755)
        run('unzip -o soft/logstash-5.2.2.zip -d logstash/')

        # 生成配置文件并上传到etc/logstash下
        template_parser.write_etc_to_local_file("logstash-tcp.tpl", "logstash-tcp.conf", **{})
        put('config/renders/logstash-tcp.conf', 'etc/logstash')

        # Upload 依赖的 drivers
        put('soft/mysql-connector-java-5.1.36.jar', 'drivers', mode=0755)
        put('soft/x-pack-5.2.2.zip', 'soft', mode=0755)
        run('logstash/logstash-5.2.2/bin/logstash-plugin install file://%s/soft/x-pack-5.2.2.zip' % elk_home_dir)

        # 启动logstash并验证安装成功
        # result = run('nohup logstash/logstash-5.2.2/bin/logstash -f etc/logstash/logstash-dataocean.conf &')
        # assert not result.failed


@hosts(elasticsearch_hosts)
def deploy_elasticsearch():
    # check_java()

    with cd(elk_home_dir):
        put("soft/elasticsearch-5.2.2.zip", "soft")
        run("unzip -o soft/elasticsearch-5.2.2.zip -d elasticsearch/")

        with settings(warn_only=True):
            run('elasticsearch/elasticsearch-5.2.2/bin/elasticsearch-plugin install file://%s/soft/x-pack-5.2.2.zip'
                % elk_home_dir)

        run('mv elasticsearch/elasticsearch-5.2.2/config/elasticsearch.yml '
            'elasticsearch/elasticsearch-5.2.2/config/elasticsearch-default.yml')

        # 生成elasticsearch的配置文件
        template_parser.write_etc_to_local_file("elasticsearch.tpl", "elasticsearch.yml",
                                                **{'elk_home_dir': elk_home_dir})
        result = put('config/renders/elasticsearch.yml', 'elasticsearch/elasticsearch-5.2.2/config')
        assert not result.failed

        # 启动elasticsearch
        # run('elasticsearch/elasticsearch-5.2.2/bin/elasticsearch -d -Epath.conf=etc/elasticsearch/ -p es-pid')


@hosts(kibana_hosts)
def deploy_kibana():
    with cd(elk_home_dir):
        put('soft/kibana-5.2.2-linux-x86_64.tar.gz', 'soft', mode=0755)
        run('tar zxvf soft/kibana-5.2.2-linux-x86_64.tar.gz -C kibana/')
        run('mv kibana/kibana-5.2.2-linux-x86_64  kibana/kibana-5.2.2')
        run('kibana/kibana-5.2.2/bin/kibana-plugin install file://%s/soft/x-pack-5.2.2.zip'
            % elk_home_dir)

        # template_parser.write_etc_to_local_file("kibana.tpl", "kibana.conf")
        # put("config/renders/kibana.conf", "etc/kibana")

        # run('nohup kibana/kibana-5.2.2/bin/kibana -c etc/kibana/ &')


def apt_get_install():
    """
    install package
    :return:
    """
    # run('apt-get install unzip')
    with cd(elk_home_dir):
        # put('soft/mysql-connector-java-5.1.36.jar', 'drivers', mode=0755)
        # put('soft/x-pack-5.2.2.zip', 'soft', mode=0755)
        put('config/renders/logstash-tcp.conf', 'etc/logstash')


def deploy():
    """ 自动化部署elk """
    # 创建部署目录
    # create_dir_structure()

    # 安装必备的工具
    # apt_get_install()

    # 部署logstash
    deploy_logstash()

    # deploy_elasticsearch()

    # deploy_kibana()
