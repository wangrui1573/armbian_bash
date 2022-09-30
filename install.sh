#!/bin/bash

#安装chfs服务
wget  -N --no-check-certificate -P /usr/local "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/chfs" && chmod +x chfs
wget  -N --no-check-certificate -P /lib/systemd/system/ "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/chfs.service" && systemctl daemon-reload && systemctl enable chfs.service && systemctl start chfs.service 

#安装ttyd服务，端口7861免登陆
wget  -N --no-check-certificate -P /usr/local "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/ttyd" && chmod +x ttyd
wget  -N --no-check-certificate -P /lib/systemd/system/ "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/ttyd.service" && systemctl daemon-reload && systemctl enable ttyd.service && systemctl start ttyd.service 

# 增加开机启动项
wget -O /etc/rc.local --no-check-certificate  "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/rc.local"

#设置检测挂载samba目录服务
mkdir /docker
wget -O /docker/job.sh --no-check-certificate  "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/job.sh"


wget -O /var/spool/cron/crontabs/root --no-check-certificate  "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/root"

#自有命令
wget -O /usr/bin/sys --no-check-certificate  "https://ghproxy.com/https://github.com/wangrui1573/armbian_bash/raw/main/bash/sys"

