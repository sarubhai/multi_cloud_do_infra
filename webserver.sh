#!/bin/bash
# Name: webserver.sh
# Owner: Saurav Mitra
# Description: Configure Nginx Webserver

apt-get --assume-yes --quiet update                               >> /dev/null
# apt-get --assume-yes --quiet dist-upgrade                         >> /dev/null
# apt-get install software-properties-common --assume-yes --quiet   >> /dev/null
add-apt-repository universe
apt-get --assume-yes --quiet install nginx                        >> /dev/null

sed -i "s|^<title>Welcome to nginx\!</title>|<title>Nginx-DO</title>|" /var/www/html/index.nginx-debian.html
sed -i "s|^<h1>Welcome to nginx\!</h1>|<h1>Welcome to nginx in DO\!</h1>|" /var/www/html/index.nginx-debian.html
