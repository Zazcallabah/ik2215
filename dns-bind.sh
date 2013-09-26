# https://help.ubuntu.com/community/BIND9ServerHowto#Primary_Master_Server

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install bind9

cp ./conf/named.conf* /etc/bind/

service bind9 start
