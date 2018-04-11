## 构建mysql-offical镜像

目录结构:

```
  |- mysql-offical
    |- Dockerfile
    |- initdb.sql
    |- my.cnf
    |- pip.conf
    |- sources.list
```
说明:
* 更改debian镜像源为阿里源
* 更改pypi源为豆瓣源
* 设置系统默认字符集为utf8
* 设置系统时区为Asia/Harbin
* 初始化featurefactory数据库

使用mysql:5.6镜像构建数云的syph-de/mysql-offical:5.6镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/mysql-offical:5.6 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/mysql-offical:5.6

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/mysql-offical:5.6
```