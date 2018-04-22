#!/bin/bash

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update

apt-cache policy docker-ce

sudo apt-get install -y docker-ce

sudo systemctl status docker

wget "https://releases.hashicorp.com/consul/1.0.7/consul_1.0.7_linux_amd64.zip"

apt install unzip

unzip consul_1.0.7_linux_amd64.zip

rm -f consul_1.0.7_linux_amd64.zip 
mv consul /bin/

