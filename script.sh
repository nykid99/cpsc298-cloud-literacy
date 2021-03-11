#!/usr/bin/bash
yum update -y
yum groupinstall 'Development Tools' -y
yum install httpd -y
mkdir /wcode
cd /wcode
git clone --branch 298-bbae https://github.com/harteratchapman/cpsc298-cloud-literacy.git
service httpd start
chkconfig httpd on
cd /wcode/cpsc298-cloud-literacy/renderer/raytrace
./build
./raytrace
cp torus.png /var/www/html/myshape.png
cp /wcode/cpsc298-cloud-literacy/298-bbae/index.html /var/www/html
