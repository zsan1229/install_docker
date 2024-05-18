#!/bin/bash

echo "更新包索引..."
sudo apt-get update

echo "安装必要的包..."
sudo apt-get install -y ca-certificates curl

echo "创建 keyrings 目录..."
sudo install -m 0755 -d /etc/apt/keyrings

echo "下载 Docker 的 GPG 密钥..."
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc

echo "修改密钥文件权限..."
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "添加 Docker APT 仓库源..."
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/debian $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "再次更新包索引..."
sudo apt-get update

echo "安装 Docker 和相关组件，这可能需要一些时间，请耐心等待..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Docker 已成功安装"
