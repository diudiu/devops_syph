

### 执行部署操作

```shell
$ cd mlcluster

$ ansible-playbook -i inventory deploy.yml

# or

$ ansible-playbook -i inventory deploy.yml --extra-vars "ansible_become_pass=123456"
```

### 导出conda的虚拟环境并导入新的机器

```shell

# Export
$ conda env export > py3_dask_environment.yml
# or
conda env export --file py3_dask_environment.yml -n py3_dask

# Create
$ conda env create -f py3_dask_environment.yml
```

### 网卡配置

```
# 修改网卡DNS解析
$ sudo vim /etc/network/interfaces
# 添加下边一行：
dns-nameservers 192.168.1.1

# 重启
sudo ifdown p11p1 && sudo ifup p11p1  # p11p1是网卡名称

```

### dask-scheduler > dask-scheduler.log 2   pkill -9 dask

### 参考资料

* [ansible all modules](http://docs.ansible.com/ansible/latest/list_of_all_modules.html)
* [ansible anaconda安装的例子](https://github.com/andrewrothstein/ansible-anaconda)

