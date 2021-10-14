#!/bin/bash
# This will install EPEL to enable packages similar to CentOS for Red Hat Linux and install the dependcies a Jenkins lab.

# Don't forget to open TCP port 8080 (default Jenkins port) in the Security group!

sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo --no-check-certificate
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum install java-11-openjdk-devel jenkins -y
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo cat /var/lib/jenkins/secrets/initialAdminPassword
