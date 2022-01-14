#!/bin/bash
# This will install Docker by setting up the stable repository and to install Docker.

sudo yum install -y yum-utils
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum install docker-ce docker-ce-cli containerd.io -y --allowerasing
sudo systemctl enable docker
sudo systemctl start docker
sudo systemctl status docker
