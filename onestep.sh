#!/bin/bash

# 安装docker环境

yum install -y yum-utils device-mapper-persistent-data lvm2

yum-config-manager --add-repo http://download.docker.com/linux/centos/docker-ce.repo

yum -y install docker-ce

groupadd docker 

gpasswd -a root docker 

systemctl start docker

systemctl enable docker

curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker version

docker-compose version

# 安装项目本体

yum install git

git clone https://github.com/Ruin-Inator/FlowerRecognition.git

cd FlowerRecognition

# 启动项目

docker-compose up -d


