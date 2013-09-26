# https://help.ubuntu.com/community/BIND9ServerHowto#Primary_Master_Server

#install service
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install bind9

# copy configuration files
cp ./conf/named.conf* /etc/bind/

# start service
service bind9 start