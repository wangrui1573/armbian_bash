# armbian_bash

用于新建armbian 服务器的期初配置

1.开机启动项
```bash
    /etc/rc.loal
```

2.chfs服务，简单文件服务器 ，tyyd服务，web ssh 
```bash
    /usr/local/chfs
    /lib/systemd/system/chfs.service

    /usr/local/ttyd
    /lib/systemd/system/ttyd.service
```

3.任务计划，监控是否掉盘，自动挂载
```bash
    /docker/job.sh
    /var/spool/cron/crontabs/root
```

```bash
    * * * * * bash /docker/job.sh 
0 0 ** *     docker run --rm --name watchtower   -v /var/run/docker.sock:/var/run/docker.sock containrrr/watchtower -c --run-once -d --trace  nas-tools
```

4.自有命令 sys
```bash
/usr/bin/sys
```