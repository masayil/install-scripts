# Version:redis 7.0.7

**使用方法：**

一、修改主机清单文件<font color="#dd0000">**hosts**</font>

二、执行ansible-playbook命令

```shell
ansible-playbook -i hosts main.yaml
```

三、重启redis-server和rsyslog

```shell
systemctl restart redis-server.service
systemctl restart rsyslog.service 
```
