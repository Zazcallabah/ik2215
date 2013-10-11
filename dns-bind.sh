#!/bin/bash
# https://help.ubuntu.com/community/BIND9ServerHowto#Primary_Master_Server

if [ "$1" == "install" ]
then
	#install service
	export DEBIAN_FRONTEND=noninteractive
	apt-get -q -y install bind9
fi

# copy configuration files
cp ./conf/bind/db.isp2.lab /etc/bind/
cp ./conf/bind/named.conf.options /etc/bind/
cp ./conf/bind/named.conf.local /etc/bind/

chmod a+r /etc/bind/db.isp2.lab
chmod a+r /etc/bind/named.conf.options 
chmod a+r /etc/bind/named.conf.local

# start service
service bind9 start