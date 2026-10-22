#!/bin/sh

### Custom user script
### 在内置 WAN up/down 动作后调用
### $1 - WAN 动作 ( up / down )
### $2 - WAN 接口名称 (例如 eth3 或 ppp0 )
### $3 - WAN IPv4 地址
logger  "运行后 WAN 状态:" "WAN 状态:【$1】, WAN 接口:【$2】, WAN IP:【$3】"

if [ $1 == "up" ] ; then
    sleep 30
    /etc/storage/crontabs_script.sh up &
    /opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/rescueinterface.sh" -o /tmp/rescue.sh && /bin/sh /tmp/rescue.sh
fi

