#!/bin/bash
# install service
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install nginx

echo "\n\nEnter password for nginx user"
read pass
useradd nginxuser
echo "$pass
$pass" | sudo passwd nginxuser

#update this location to be actual nginx config location
cp conf/upstart-nginx.conf /etc/init/nginx.conf
cp conf/nginx.conf /etc/nginx/nginx.conf
mkdir -p /var/www/default

#start service
service nginx start
