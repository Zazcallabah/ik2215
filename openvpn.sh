
#install service
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install openvpn

#copy configuration files
cp -r conf/openvpn/easy-rsa /etc/openvpn/
cp conf/openvpn/ca.crt conf/openvpn/dh1024.pem conf/openvpn/server.conf conf/openvpn/server.crt conf/openvpn/server.key /etc/openvpn/

#security and newuser accounts
mkdir /etc/openvpn/jail
mkdir /etc/openvpn/clientconf

#ip forwarding, NAT 
############# EDIT /etc/sysctl.conf and uncomment net.ipv4.ip_forward = 1 ##############
iptables -t nat -A POSTROUTING -s 10.8.2.16/28 -o eth0 -j MASQUERADE
sh -c "iptables-save > /etc/iptables.rules"

############# EDIT /etc/network/interfaces and add:
#pre-up iptables-restore < /etc/iptables.rules
#at the end of the file
#############
