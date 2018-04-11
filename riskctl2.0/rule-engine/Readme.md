## 构建rule-engine镜像

目录结构:

```
  |- rule-engine
    |- Dockerfile
```
说明:
* 下载rule-engine-x.x.x-SNAPSHOT.jar到镜像
* 默认命令为启动rule-engine的命令 

使用syph-de/jdk:1.8.0镜像构建数云的rule-engine镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/rule-engine:2.3.0 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/rule-engine:2.3.0

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/rule-engine:2.3.0
```