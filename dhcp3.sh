#!/bin/bash
# https://help.ubuntu.com/community/dhcp3-server

if [ "$1" == "install" ]
then
	#install service
	export DEBIAN_FRONTEND=noninteractive
	apt-get -q -y install isc-dhcp-server
fi

# Copy the configuration files to server
cp ./conf/dhcpd.conf /etc/dhcp3/dhcpd.conf

# configure static ip for dhcp server
ifconfig eth0 10.2.8.22 netmask 255.255.255.240
route add default gw 10.2.8.19

# Start the service
/etc/init.d/isc-dhcp-server start
