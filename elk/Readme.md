

## ELK Docker Deploy

ELK包含了Elasticsearch、Logstash、Kibana，是一个集中式的日志收集与分析平台；对于ELK的部署基于Docker。

### ELK docker network

ELK的网络名称使用：`elastic-stack`

### ELK docker 的数据和配置管理

统一将ELK docker中的数据和配置放在：`/var/local/docker/elk/data` 和 `/var/local/docker/elk/conf`

### docker image管理

团队使用到的所有镜像都维护在阿里云的镜像仓库中，Docker镜像仓库用户：

阿里云管理控制台登录地址：`https://signin.aliyun.com/35482511/login.htm?callback=https%3A%2F%2Fcr.console.aliyun.com%2F`, 选择 `华北1`

username: `develop@35482511`

password: `docker@syph`

- 命名空间

ELK Docker平台使用命名空间： `syph-elk`

在阿里云上的全路径为 `registry.cn-qingdao.aliyuncs.com/syph-elk/[image name]:[image version]`

- 包含的image

__elasticsearch__: elasticsearch的基础镜像，基于docker.elastic.co/elasticsearch/elasticsearch:5.2.2

__logstash__: logstash的基础镜像，基于docker.elastic.co/logstash/logstash:5.2.2

__kibana__: kibana的基础镜像，基于docker.elastic.co/kibana/kibana:5.2.2

#### elasticsearch

>公网地址: docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch

>经典内网: docker pull registry-internal.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch

>VPC网络: docker pull registry-vpc.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch

- elasticsearch 的 image管理

```
# 登录阿里云docker registry
sudo docker login --username=develop@35482511 registry.cn-qingdao.aliyuncs.com

# 从registry中拉取镜像 
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch:[镜像版本号]

# 将镜像推送到registry
sudo docker login --username=develop@35482511 registry.cn-qingdao.aliyuncs.com
sudo docker tag [ImageId] registry.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch:[镜像版本号]
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-elk/elasticsearch:[镜像版本号]
```

- docker-compose's elasticsearch service

在docker-compose.yml中配置`elasticsearch`服务：

服务名称：`elasticsearch`

__volumes__: [volumes的配置](docker-compose.yml)

镜像版本号：`5.2.2-[年月日时分]`, 如 `5.2.2-1703121010`

__ports__: 端口预留及分布情况为：`9200 ~ 9210`

| 宿主机端口 | 容器端口 | 用途 |
| ---------- | ---------- | ---------- |
| 9200 | 9200 | Elasticsearch的HTTP服务端口 |

#### logstash

>公网地址: docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/logstash

>经典内网: docker pull registry-internal.cn-qingdao.aliyuncs.com/syph-elk/logstash

>VPC网络: docker pull registry-vpc.cn-qingdao.aliyuncs.com/syph-elk/logstash

- logstash 的 image管理

```
# 登录阿里云docker registry
sudo docker login --username=develop@35482511 registry.cn-qingdao.aliyuncs.com

# 从aliyun registry拉取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:[镜像版本号]

# 将镜像推送到registry
sudo docker login --username=develop@35482511 registry.cn-qingdao.aliyuncs.com
sudo docker tag [ImageId] registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:[镜像版本号]
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-elk/logstash:[镜像版本号]
```

- docker-compose's logstash service

在docker-compose.yml中配置`logstash`服务：

服务名称：`logstash`

镜像版本号：`5.2.2-[年月日时分]`, 如 `5.2.2-1703121010`

__volumes__: [volumes的配置](docker-compose.yml)

__depends_on__: 依赖`elasticsearch`服务

__ports__: 端口预留及分布情况为：`5040 ~ 5080`

| 宿主机端口 | 容器端口 | 用途 |
| ---------- | ---------- | ---------- |
| 5043 | 5043 | Filebeats for rule-engine |
| 5046 | 5046 | TCP for rule-engine|

#### kibana

>公网地址:docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/kibana

>经典内网:docker pull registry-internal.cn-qingdao.aliyuncs.com/syph-elk/kibana

>VPC网络:docker pull registry-vpc.cn-qingdao.aliyuncs.com/syph-elk/kibana

- kibana 的 image管理

```
# 登录阿里云docker registry
sudo docker login --username=develop@35482511 registry.cn-qingdao.aliyuncs.com

# 从registry中拉取镜像
sudo docker pull registry.cn-qingdao.aliyuncs.com/syph-elk/kibana:[镜像版本号]

# 将镜像推送到registry
sudo docker tag [ImageId] registry.cn-qingdao.aliyuncs.com/syph-elk/kibana:[镜像版本号]
sudo docker push registry.cn-qingdao.aliyuncs.com/syph-elk/kibana:[镜像版本号]
```

- docker-compose's kibana service

在docker-compose.yml中配置`kibana`服务：

服务名称：`kibana`

镜像版本号：`5.2.2-[年月日时分]`, 如 `5.2.2-1703121010`

__volumes__: [volumes的配置](docker-compose.yml)

__depends_on__: 依赖`elasticsearch`服务

__ports__: 端口预留及分布情况为：`5601 ~ 5609`

| 宿主机端口 | 容器端口 | 用途 |
| ---------- | ---------- | ---------- |
| 5601 | 5601 | Kibana的页面访问端口 | 

### Next step

脚本化部署过程
