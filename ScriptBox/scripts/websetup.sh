#! /bin/bash

# Installing dependencies
echo "###################################"
echo "Installing packages
echo "###################################""
sudo yum install httpd unzip wget -y

# Start and Enable the service
echo"####################################"
echo "Start and Enable httpd service
echo "##################################""
sudo systemctl start httpd
sudo systemctl enable httpd
echo 
# Creaing webfiles folder
echo "###################################"
echo "Starting Arttifact Deployment"
echo "##################################"
mkdir -p  /tmp/webfiles
echo 
cd /tmp/webfiles
wget https://www.tooplate.com/zip-templates/2128_tween_agency.zip
unzip  2128_tween_agency.zip
sudo cp -r 2128_tween_agency/*  /var/www/html
echo
# Bounce the service"
echo "####################################"
echo "Restarging HTTPD srevice"
echo "####################################"
systemctl restart httpd
echo
# Cleaning /tmp diectoy
echo "##################################"
echo "Cleaning /tmp diretory"
echo "#################################"
rm -rf /temp/webfiles
echo 

