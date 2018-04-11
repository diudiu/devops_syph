# -*- coding: utf-8 -*-

"""
需要导出的images：

  hub:5000/syph-de/featurefactory:latest
  hub:5000/syph-de/mongodb:latest
  hub:5000/syph-de/mysql-offical:latest
  hub:5000/syph-de/nginx-de:latest
  hub:5000/syph-de/redis:latest
  hub:5000/syph-de/rule-engine:latest

  hub:5000/syph-elk/logstash:5.2.2
  hub:5000/syph-elk/elasticsearch:5.2.2
  hub:5000/syph-elk/kibana:5.2.2

  registry:2
  hub:5000/syph-hub/docker-registry-web:latest
"""

from fabric.api import *
from fabric.colors import *
from fabric.context_managers import  *


env.hosts = ['192.168.1.196']
env.user = 'dev'
env.password = '123456'

image_list = [
    'hub:5000/syph-de/featurefactory:latest',
    'hub:5000/syph-de/mongodb:latest',
    'hub:5000/syph-de/mysql-offical:latest',
    'hub:5000/syph-de/nginx-de:latest',
    'hub:5000/syph-de/redis:latest',
    'hub:5000/syph-de/rule-engine:latest',
    'hub:5000/syph-elk/logstash:5.2.2',
    'hub:5000/syph-elk/elasticsearch:5.2.2',
    'hub:5000/syph-elk/kibana:5.2.2',
    'hub:5000/syph-hub/registry:2',
    'hub:5000/syph-hub/docker-registry-web:latest',
    'hub:5000/syph-dns/dnsmasq:latest'
]


def save_images():
    """
     docker save -o xxx.tar xxx
    """
