# example setup script

sudo apt-get install nginx
sudo service nginx start

# this just checks if nginx started ok
ifconfig eth0 | grep inet | awk '{ print $2 }'

#write config
echo "server {
    listen          80 default_server;
 
    index           index.html;
    root            /var/www/default;
}" > /var/tmp/nginx.conf


#update this location to be actual nginx config location
sudo mv /var/tmp/nginx.conf /usr/local/nginx/conf/nginx.conf

#set nginx service to start when computer starts
update-rc.d nginx defaults
