# https://help.ubuntu.com/community/dhcp3-server

sudo apt-get install isc-dhcp-server


sudo cp ./conf/dhcp3.conf /etc/dhcp3/dhcpd.conf

sudo service dhcp3-server start
