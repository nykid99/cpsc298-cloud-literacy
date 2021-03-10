#!/usr/bin/bash
yum update -y
yum groupinstall 'Development Tools' -y
yum install httpd -y
mkdir /wcode
cd /wcode
git clone --branch tyler-cpsc298 https://github.com/harteratchapman/cpsc298-cloud-literacy.git
service httpd start
chkconfig httpd on
cd /wcode/cpsc298-cloud-literacy/renderer/raytrace
sudo ./build
sudo ./raytrace test
sudo cp cuboid.png /var/www/html/myshape.png
cd /home/ec2-user/cpsc298-cloud-literacy/tyler
sudo cp index.html /var/www/html


