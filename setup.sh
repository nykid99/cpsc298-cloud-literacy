#!/usr/bin/bash
sudo yum update -y
sudo yum groupinstall 'Development Tools' -y
sudo yum install httpd -y
sudo mkdir /youn_code
cd /youn_code
sudo git clone --branch christopher https://github.com/christofuy/cpsc298-cloud-literacy.git
sudo service httpd start
sudo chkconfig httpd on
cd cpsc298-cloud-literacy/renderer/raytrace
sudo ./build
sudo ./raytrace test
