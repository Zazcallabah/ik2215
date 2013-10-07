# http://wiki2.dovecot.org/FrontPage
# https://help.ubuntu.com/community/Dovecot

#install service
export DEBIAN_FRONTEND=noninteractive
apt-get -q -y install dovecot-imapd dovecot-pop3d

# copy configuration files
cp ./conf/dovecot.conf /etc/dovecot/dovecot.conf

# setup user accounts
# http://wiki2.dovecot.org/UserIds#mailusers




# start service
/etc/init.d/dovecot start