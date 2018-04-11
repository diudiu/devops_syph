## 构建nginx镜像

目录结构:

```
  |- nginx
    |- featurefactory.conf
    |- rule_engine.conf
    |- rule_engine_ui.conf
```
说明:
* nginx代理featurefactory,监听端口9090,与uwsig通信端口9091
* nginx代理rule_engine,监听端口8080,与spring通信端口8081
* nginx代理rule_engine_ui,监听端口8083

静态文件位置: `/opt/rule_engine_ui`

使用syph-de/nginx:1.10.3镜像构建数云的syph-de/nginx-de:latest镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/nginx:latest .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/nginx:latest

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/nginx:latest
```