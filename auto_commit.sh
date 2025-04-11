#!/bin/bash

# 自动提交脚本

# 检查是否有更改
git status --porcelain | grep -q . || { echo "没有更改需要提交"; exit 0; }

# 添加所有更改
git add .
auto_commit.sh
# 提交更改，消息包含当前日期时间
git commit -m "自动提交于 $(date '+%Y-%m-%d %H:%M:%S')"

# 推送到远程仓库
git push origin master

echo "自动提交完成！" 