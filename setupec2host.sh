#!/usr/bin/bash
yum update -y
yum groupinstall 'Development Tools' -y
yum install httpd -y
mkdir /wcode
cd /wcode
git clone --branch wood https://github.com/harteratchapman/cpsc298-cloud-literacy.git
service httpd start
chkconfig httpd on
cd /wcode/cpsc298-cloud-literacy/renderer/raytrace
./build
./raytrace test
cp /wcode/cpsc298-cloud-literacy/wood/index.html /var/www/html
cp spheroid.png /var/www/html/myshape.png
cd /wcode/cpsc298-cloud-literacy/wood/index.html /var/www/html