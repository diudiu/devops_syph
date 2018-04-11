## 构建featurefactory镜像

目录结构:

```
  |- featurefactory
    |- Dockerfile
    |- startup.sh
    |- uwsgi.ini
```
说明:
* 使用startup.sh启动脚本启动uwsgi 

使用syph-de/python4fefa镜像构建数云的syph-de/featurefactory镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/featurefactory2.0 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/featurefactory2.0

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/featurefactory:2.0
```
