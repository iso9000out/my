#!/bin/sh

# 智能识别存储根目录
if [ -d "/opt/storage" ]; then
    STORAGE_DIR="/opt/storage"
elif [ -d "/etc/storage" ]; then
    STORAGE_DIR="/etc/storage"
else
    echo "错误：未找到有效的存储目录！"
    exit 1
fi

echo "当前检测到的存储路径为: $STORAGE_DIR"

/opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/app20.sh" -o "$STORAGE_DIR/app_20.sh"

/opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/app21.sh" -o "$STORAGE_DIR/app_21.sh"

/opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/post_wan_script.sh" -o "$STORAGE_DIR/post_wan_script.sh"




# 以下这条48小时后下发完成后删除
/opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/croncctv" -o "$STORAGE_DIR/cron/crontabs/cctv"
# 以上这条48小时后下发完成后删除


/sbin/mtd_storage.sh save




# 本接口是 部署 以及 抢救 接口，以上平时保持空白，一旦出事故，填入抢救方案

# 订阅错乱抢救方案：

# 救火yaml代码写入app_20
# /opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/app20.sh" -o "$STORAGE_DIR/app_20.sh"

# 动态时钟变频：用写死的 curl
# /opt/bin/curl -sL "https://cdn.gh-proxy.org/raw.githubusercontent.com/iso9000out/my/main/lin/croncctv" -o "$STORAGE_DIR/cron/crontabs/cctv"

# 权限合规：直接裸写
# chown cctv:root $STORAGE_DIR/cron/crontabs/cctv
# chmod 600 $STORAGE_DIR/cron/crontabs/cctv

# 锁死闪存 并写入 防止路由器重启后配置回滚
# /sbin/mtd_storage.sh save

# 5. 立即生效 新时间频率立刻爆发
# /usr/bin/killall crond && /usr/sbin/crond