#!/usr/bin/env bash

git clone https://github.com/chef/bento.git
curl -OL "https://releases.hashicorp.com/packer/1.1.2/packer_1.1.2_linux_amd64.zip"
unzip packer_1.1.2_linux_amd64.zip

cd bento/ubuntu
./packer build -only=virtualbox-iso -var "headless=true" ubuntu-16.04-amd64.json 
