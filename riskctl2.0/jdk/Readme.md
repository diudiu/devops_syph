## 构建jdk镜像

目录结构:

```
  |- rule-engine
    |- Dockerfile
```
说明:
* 安装jdk1.8.0

使用syph-de/ubuntu:14.04镜像构建数云的jdk:1.8.0镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/jdk:1.8.0 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/jdk:1.8.0

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/jdk:1.8.0
```