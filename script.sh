#!/usr/bin/bash
sudo yum update -y
sudo yum groupinstall 'Development Tools' -y
sudo yum install httpd -y
sudo mkdir /shree
cd /shree
sudo git clone --branch shree-cpsc298 https://github.com/harteratchapman/cpsc298-cloud-literacy.git
sudo service httpd start
sudo chkconfig httpd on 
cd /renderer/raytrace 
sudo ./build 
sudo ./raytrace test 
cd ..
cd ..
cd html
sudo cp index.html /var/www/html
cd ..
cd /renderer/raytrace 
sudo cp cuboid.png myshape.png
sudo cp myimage.png /var/www/html

