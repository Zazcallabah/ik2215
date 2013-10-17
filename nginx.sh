
# install service
apt-get -q -y install nginx

# copy configuration
cp conf/nginx.conf /etc/nginx/sites-enabled/default

# create web directory (matches path in conf/nginx.conf)
mkdir -p /home/www/particle
tar -xvf conf/particle.tar.gz
cp particle/* /home/www/particle
cp conf/final2.pdf /home/www
cp conf/final2.html /home/www
cp conf/topology.png /home/www



#start service
service nginx start
