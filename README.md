# devops

## ELK Docker Deploy

ELK 集中式实时日志分析平台

参看 [ELK的容器部署](elk/Readme.md)

## 在Docker swarm mode下部署服务

```
# 部署 elk
cd elk
sudo docker stack deploy -c docker-compose.yml elastic

sudo docker stack ls

sudo docker stack services elastic

sudo docker stack ps elastic

sudo docker ps

sudo docker logs [container id or name]

sudo docker exec -it [container id or name] /bin/bash
```

# 删除容器尸体
```
sudo docker ps --filter "status=exited" | grep 'days ago' | awk '{print $1}' | xargs --no-run-if-empty sudo docker rm
```
'days ago' 可以改为 'weeks ago' 以删除更老的容器

