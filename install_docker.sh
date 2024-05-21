#!/bin/bash

# 获取系统信息
os_name=$(grep '^ID=' /etc/os-release | cut -d'=' -f2 | tr -d '"')

# 判断系统并执行相应的脚本
if [ "$os_name" == "debian" ]; then
    echo "Detected Debian system. Running Debian Docker installation script."
    bash <(curl -Ls https://raw.githubusercontent.com/zsan1229/install_docker/main/install_docker_debian.sh)
elif [ "$os_name" == "ubuntu" ]; then
    echo "Detected Ubuntu system. Running Ubuntu Docker installation script."
    bash <(curl -Ls https://raw.githubusercontent.com/zsan1229/install_docker/main/install_docker_ubuntu.sh)
else
    echo "Unsupported OS: $os_name. This script only supports Debian and Ubuntu."
    exit 1
fi
