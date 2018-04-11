## ubuntu构建基础镜像

目录结构:

```
  |- ubuntu
    |- Dockerfile
    |- pip.conf
    |- sources.list
```
说明:
* 更改ubuntu镜像源为阿里源
* 更改pypi源为豆瓣源
* 设置系统默认字符集为utf8
* 设置系统时区为Asia/Harbin
* 预装软件: apt-transport-https | vim  | net-tools |   python-pip   |   netcat |  wget  |  curl

使用官方ubuntu:14.04镜像构建数云的ubuntu:14.04镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/ubuntu:14.04 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/ubuntu:14.04

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/ubuntu:14.04
```
