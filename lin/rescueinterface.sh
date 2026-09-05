#!/bin/sh


/opt/bin/curl -sL "https://iso9000out.neocities.org/lin/clientmv8.txt" -o /opt/storage/app_20.sh


# 以下这条48小时后下发完成后删除
/opt/bin/curl -sL "https://iso9000out.neocities.org/lin/croncctv" -o /opt/storage/cron/crontabs/cctv
# 以上这条48小时后下发完成后删除


/sbin/mtd_storage.sh save




# 本接口是 部署 以及 抢救 接口，以上平时保持空白，一旦出事故，填入抢救方案

# 订阅错乱抢救方案：

# 救火yaml代码写入app_20
# /opt/bin/curl -sL "https://iso9000out.neocities.org/lin/clientmv8.txt" -o /opt/storage/app_20.sh

# 动态时钟变频：用写死的 curl
# /opt/bin/curl -sL "https://iso9000out.neocities.org/lin/croncctv" -o /opt/storage/cron/crontabs/cctv

# 权限合规：直接裸写
# chown cctv:root /opt/storage/cron/crontabs/cctv
# chmod 600 /opt/storage/cron/crontabs/cctv

# 锁死闪存 并写入 防止路由器重启后配置回滚
# /sbin/mtd_storage.sh save

# 5. 立即生效 新时间频率立刻爆发
# /usr/bin/killall crond && /usr/sbin/crond
