#!/bin/bash
# This will install EPEL to enable packages similar to CentOS for Red Hat Linux and install the dependcies for the Gradle lab.

sudo dnf install https://dl.fedoraproject.org/pub/epel/epel-release-latest-8.noarch.rpm -y
sudo dnf repolist -v
sudo yum install java-1.8.0-openjdk git zip unzip wget htop systemd -y
wget -O ~/gradle-7.2-bin.zip https://services.gradle.org/distributions/gradle-7.2-bin.zip
sudo mkdir /opt/gradle
sudo unzip -d /opt/gradle ~/gradle-7.2-bin.zip
export PATH=$PATH:/opt/gradle/gradle-7.2/bin
sudo reboot now
