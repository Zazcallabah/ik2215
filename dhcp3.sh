# https://help.ubuntu.com/community/dhcp3-server

export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install isc-dhcp-server
cp ./conf/dhcp3.conf /etc/dhcp3/dhcpd.conf
service dhcp3-server start
