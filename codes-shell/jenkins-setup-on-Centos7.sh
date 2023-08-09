!#/bin/bash
#
echo "Installing java-11 on jenkins"
sudo yum install java-1.8.0-openjdk-devel
echo 
echo "To ennable Jenkins repository
curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.repo
echo 
echo "To add repository with system"
sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
echo 
echo "To install Jenkins"
sudo yum install jenkins
echo 
echo "To start jenkins service"
sudo systemctl start jenkins
