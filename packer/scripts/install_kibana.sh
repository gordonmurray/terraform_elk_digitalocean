#!/usr/bin/env bash

set -xe

sudo apt-get update

sudo apt-get upgrade -y

sudo apt install openjdk-8-jre apt-transport-https wget nginx -y

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

echo "deb https://artifacts.elastic.co/packages/6.x/apt stable main" > /etc/apt/sources.list.d/elastic.list

sudo apt update

sudo apt install kibana -y

#/etc/kibana/kibana.yml

sudo systemctl restart kibana

sudo apt autoremove -y