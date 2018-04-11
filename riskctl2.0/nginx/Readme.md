## 构建nginx镜像

目录结构:

```
  |- nginx
    |- pip.conf
    |- sources.list
```
说明:
* 修改pypi源为豆瓣源
* 修改debian源为阿里源
* 设置系统时区为Asia/Harbin
* 预装软件 `curl`


使用官方nginx:1.10.3镜像构建数云的syph-de/nginx:1.10.3镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；
```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-de/nginx:1.10.3 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-de/nginx:1.10.3

# 获取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-de/nginx:1.10.3
```