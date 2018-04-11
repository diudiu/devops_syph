## 构建python4fefa镜像

目录结构:

```
  |- ubuntu
    |- Dockerfile
    |- requirements.txt
```
说明:
* 预装特征工厂依赖包

使用syph-de/python:2.7镜像构建数云的syph-de/python4fefa:2.7镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/python4fefa:2.7 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/python4fefa:2.7

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/python4fefa:2.7
```