# install service
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install nginx

#update this location to be actual nginx config location
cp conf/nginx.conf /etc/nginx/nginx.conf
mkdir -p /var/www/default

#start service
service nginx start
