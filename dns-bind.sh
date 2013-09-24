# https://help.ubuntu.com/community/BIND9ServerHowto#Primary_Master_Server

sudo apt-get install bind9


sudo service bind9 start

echo "  zone \"example.com\" {
             type master;
             file "/etc/bind/db.example.com";
        };" >> /var/tmp/named.conf.local

