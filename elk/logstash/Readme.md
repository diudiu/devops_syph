
## Logstash构建基础Image

目录结构：

```
  |- logstash
    |- config
      |- log4j2.properties
      |- logstash.yml
    |- pipeline
      |- logstash.conf
    |- Dockerfile
    |- Readme.md
```
使用elastic提供的官方`logstash:5.2.2`镜像构建数云的`logstash`镜像，并将构建成功的镜像维护在阿里云的Docker镜像仓库；

```
# build镜像
sudo docker image build -t registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:5.2.2 .

# push镜像到阿里云镜像仓库
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:5.2.2

# 以后在其他节点这么使用
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:5.2.2

# 然后在docker-compose.yml中配置logstash.image
```
