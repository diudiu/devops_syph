
## 构建私有Docker仓库

### Docker registry server

```
# pull registry
docker pull registry:2

# docker save
docker save -o registry.tar registry:2

# load docker
docker load --input registry.tar

# docker compose
docker-compose up -d
```

### 参考

https://hub.docker.com/r/hyper/docker-registry-web/
http://blog.csdn.net/mideagroup/article/details/52052618
