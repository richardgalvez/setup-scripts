#!/bin/bash
# This will install EPEL to enable packages similar to CentOS for Red Hat Linux and install the dependcies a Jenkins lab.

# Don't forget to open TCP port 8080 (default Jenkins port) in the Security group!

sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
sudo dnf repolist -v
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install epel-release java-11-openjdk-devel jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
