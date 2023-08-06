#!/bin/bash
# install jenkins on ubuntu-18
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
apt update -y
sudo apt install jenkins
sudo apt install jenkins --fix-missing
sudo apt install ca-certificates
sudo apt install jenkins
systemctl status jenkins
 

