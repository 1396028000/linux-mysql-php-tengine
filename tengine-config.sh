#!/bin/sh

echo "export PATH=\$PATH:/opt/tengine/bin" >> /etc/bash.bashrc 
echo "export PATH=\$PATH:/opt/tengine/sbin" >> /etc/bash.bashrc 

source /etc/bash.bashrc 

mkdir /opt/tengine/vhost
cp -rf vhost/* /opt/tengine/vhost/
cp -rf conf/* /opt/tengine/conf

chkconfig nginx on

cat init.d/nginx > /etc/init.d/nginx 

chmod 755 /etc/init.d/nginx

service nginx restart

netstat -tupln | grep nginx
