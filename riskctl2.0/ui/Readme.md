## 构建nginx镜像

目录结构:

```
  |- ui
    |- Dockerfile
    |- rule_engine_ui.conf
    |- startup.sh
```
说明:
* 代理UI静态页面

静态文件位置: `/opt/rule_engine_ui`

使用syph-de/nginx:1.10.3镜像构建数云的syph-de/nginx-de/ui:latest镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/ui:latest .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/ui:latest

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/ui:latest
```
