#!/bin/bash
# https://help.ubuntu.com/community/dhcp3-server

if [ "$1" == "install" ]
then
	#install service
	export DEBIAN_FRONTEND=noninteractive
	apt-get -q -y install isc-dhcp-server
fi

# Copy the configuration files to server
cp ./conf/dhcpd.conf /etc/dhcp/dhcpd.conf
cp ./conf/dhcpd.conf /etc/dhcp3/dhcpd.conf


#remove config for eth0 and place the result in interfaces.tmp
sed '/iface eth0/d' /etc/network/interfaces > interfaces.tmp

#add static config for eth0 to interfaces.tmp
echo 'iface eth0 inet static
address 10.2.8.22
netmask 255.255.255.240
gateway 10.2.8.19' >> interfaces.tmp

#backup old network config and
#replace network config with our modified config
cp /etc/network/interfaces /etc/network/interfaces.backup
cp interfaces.tmp /etc/network/interfaces

# Start the service
service isc-dhcp-server start