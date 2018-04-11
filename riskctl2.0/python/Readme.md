## ubuntu构建基础镜像

目录结构:

```
  |- python
    |- Dockerfile
    |- pip.conf
    |- sources.list
```
说明:
* 更改debian镜像源为阿里源
* 更改pypi源为豆瓣源
* 设置系统默认字符集为utf8
* 设置系统时区为Asia/Harbin
* 预装软件: vim  | net-tools 

使用官方python:2.7镜像构建数云的syph-de/python:2.7镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/upython:2.7 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/python:2.7

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/python:2.7
```