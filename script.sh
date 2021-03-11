#!/usr/bin/bash
yum update -y
yum groupinstall 'Development Tools' -y
yum install httpd -y
mkdir /wcode
cd /wcode
git clone --branch bbae-298 https://github.com/harteratchapman/cpsc298-cloud-literacy.git
service httpd start
chkconfig httpd on
cd /wcode/cpsc298-cloud-literacy/renderer/raytrace
./build
./raytrace
cp torus.png /var/www/html/myshape.png
cp /wcode/cpsc298-cloud-literacy/bbae-298/index.html /var/www/html
