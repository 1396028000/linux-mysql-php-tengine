#!/bin/sh

sudo apt-get update 
sudo apt-get intsall make -y
sudo apt-get install git libpcre3 libpcre3-dev openssl libssl-dev -y
sudo apt-get install gcc gcc-c++ libxml2 libxml2-devel autoconf libjpeg libjpeg-devel -y
sudo apt-get install libpng libpng-devel freetype freetype-devel  -y
sudo apt-get install zlib zlib-devel glibc glibc-devel glib2 glib2-devel -y
sudo apt-get install libgeoip-dev -y
sudo apt-get install libgd2-xpm libgd2-xpm-dev -y
sudo apt-get install libxslt-dev -y
sudo apt-get install chkconfig -y
sudo apt-get install libpcre3 libpcre3-dev -y

git clone git://github.com/alibaba/tengine.git
cd tengine
./configure  \
--prefix=/opt/tengine  --with-ipv6 --with-pcre \
--user=www-data --group=www-data \
--with-http_flv_module \
--with-http_ssl_module \
--with-http_sub_module \
--with-http_dav_module \
--with-http_concat_module \
--with-http_realip_module \
--with-http_sysguard_module \
--with-http_addition_module \
--with-http_stub_status_module \
--with-http_gzip_static_module \
--with-http_random_index_module 



make
sudo make install
