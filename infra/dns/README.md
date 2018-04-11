### 启动DNS容器
```
./startup.sh
```
以上命令将会启动一个名为dns的docker容器，端口号53：
```
CONTAINER ID NAMES IMAGE                COMMAND                CREATED        STATUS        PORTS

74c7b54bd75f dns andyshinn/dnsmasq:2.76 "dnsmasq -k -C /dn..." 41 minutes ago Up 41 minutes 0.0.0.0:53->53/tcp, 0.0.0.0:53->53/udp

```

### 在Ubuntu主机上设置DNS服务器地址

- 假设容器所在主机的IP地址是192.168.1.101
- 在需要设置的主机上修改一下文件：
```
/etc/network/interfaces
```
增加后者修改一下内容

```
dns-nameservers 192.168.1.1
```
改为
```
dns-nameservers 192.168.1.101 192.168.1.1
```

- 找到对应网络接口的名字
```
ifconfig -a | sed 's/[ \t].*//;/^$/d'
```
假设对应的接口为eth0

- 重启网络接口，更新配置
```
sudo ifdown eth0 && sudo ifup eth0
```

- 检查配置是否成功
```
cat /etc/resolv.conf
```
文件内容须包含以下内容
```
nameserver 192.168.1.101
nameserver 192.168.1.1
```

- 获得容器的IP
```
docker inspect -f '{{.NetworkSettings.IPAddress}}' dns
```
