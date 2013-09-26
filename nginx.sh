
# install service
apt-get -q -y install nginx

# copy configuration
cp conf/nginx.conf /etc/nginx/sites-enabled/default

# create web directory (matches path in conf/nginx.conf)
mkdir -p /home/www

#start service
service nginx start
