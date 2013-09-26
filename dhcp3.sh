# https://help.ubuntu.com/community/dhcp3-server

#testing purpose

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install isc-dhcp-server
cp ./conf/dhcp3.conf /etc/dhcp3/dhcpd.conf
/etc/init.d/isc-dhcp-server start
