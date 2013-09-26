# https://help.ubuntu.com/community/dhcp3-server

# Silently install dhcp server
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install isc-dhcp-server

# Copy the configuration files to server
cp ./conf/dhcp3.conf /etc/dhcp3/dhcpd.conf

# Start the service
/etc/init.d/isc-dhcp-server start
