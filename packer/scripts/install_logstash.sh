#!/usr/bin/env bash

set -xe

sudo apt-get update

sudo apt-get upgrade -y

sudo apt install openjdk-8-jre apt-transport-https wget -y

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" > /etc/apt/sources.list.d/elastic.list

sudo apt update

mkdir -p /etc/default/logstash

sudo apt install logstash -y

sudo systemctl start logstash

sudo apt autoremove -y