# 1. 提取当前版本号（自动去掉前面的 v）
current_ver=$(/opt/bin/clash -v | awk '{print $3}' | sed 's/^v//')

# 2. 定义目标基准版本号
target_ver="1.19.27"

# 3. 检查版本号中是否包含 "alpha-"（使用 -i 参数忽略大小写）
if echo "$current_ver" | grep -qi "alpha-"; then
    echo "当前版本 ($current_ver) 包含 alpha- 预览版标识，正在执行删除..."
    rm -f /opt/bin/clash
    echo "文件已删除。"
# 4. 如果没有 alpha-，则走原有的版本号高低对比逻辑
elif [ "$(printf '%s\n' "$current_ver" "$target_ver" | sort -V | head -n1)" = "$current_ver" ] && [ "$current_ver" != "$target_ver" ]; then
    echo "当前版本 ($current_ver) 小于 $target_ver，正在执行删除..."
    rm -f /opt/bin/clash
    echo "文件已删除。"
else
    echo "当前版本 ($current_ver) 大于或等于 $target_ver 且不包含 alpha-，无需删除。"
fi
