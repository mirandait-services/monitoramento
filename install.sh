#!/bin/bash
#Instalação do Docker
apt update -y
apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
apt update -y
apt install docker-ce -y
curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
docker-compose --version
#

#Docker-compose
docker-compose docker-compose/graylog/docker-compose.yml create
docker-compose docker-compose/zabbix/docker-compose.yml create
docker-compose docker-compose/graylog/docker-compose.yml start
docker-compose docker-compose/zabbix/docker-compose.yml start
#