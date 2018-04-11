# decision-engine() Docker Deploy

decision engine包含了nginx-de、featurefactory、rule-engine、mysql、mongodb、redis。

### de docker network

ELK的网络名称使用：`de-stack`

### de docker 的数据和配置管理

统一将de docker中的数据和配置放在：`/var/local/docker/de/data` 和 `/var/local/docker/de/conf`

### docker image管理

团队使用到的所有镜像都维护在阿里云的镜像仓库中，Docker镜像仓库用户：

阿里云管理控制台登录地址：`https://signin.aliyun.com/35482511/login.htm?callback=https%3A%2F%2Fcr.console.aliyun.com%2F`, 选择 `华北1`

username: `develop@35482511`

password: `docker@syph`

- 命名空间

de Docker平台使用命名空间： `syph-de`

在阿里云上的全路径为 `registry.cn-qingdao.aliyuncs.com/syph-de/[image name]:[image version]`

- 包含的image

__nginx-de__: nginx的基础镜像，基于registry.cn-qingdao.aliyuncs.com/syph-de/nginx:1.10.3

__featurefactory__: featurefactory的基础镜像，基于registry.cn-qingdao.aliyuncs.com/syph-de/python4fefa:2.7

__rule-engine__: rule-engine的基础镜像，基于registry.cn-qingdao.aliyuncs.com/syph-de/jdk:1.8.0

__mysql__: mysql的基础镜像，基于mysql:5.6

__mongodb__: mongodb的基础镜像，基于bitnami/mongodb:latest

__redis__: redis的基础镜像，基于bitnami/redis:latest
