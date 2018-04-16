#!/bin/bash
# https://www.icinga.com/docs/icinga2/latest/doc/02-getting-started/
# https://www.icinga.com/docs/icingaweb2/latest/doc/02-Installation/

wget -O - http://packages.icinga.com/icinga.key | apt-key add -
echo 'deb http://packages.icinga.com/debian icinga-stretch main' > /etc/apt/sources.list.d/icinga.list
apt-get update

apt upgrade -y

apt install net-tools curl wget vim -y

apt install vim-icinga2 vim-addon-manager -y

apt install icinga2 nagios-plugins monitoring-plugins -y

apt install icingaweb2 icingacli -y

# Create setup token to configure
icingacli setup token create

# If need to see setup token created
icingacli setup token show

vim-addon-manager -w install icinga2

apt install mysql-server mysql-client -y
mysql_secure_installation

apt install icinga2-ido-mysql -y

### MySql
# CREATE DATABASE icingaweb2;
# GRANT ALL ON icingaweb2.* TO icingaweb2@localhost IDENTIFIED BY '<PASSWORD>';

service mysql restart

icinga2 feature enable ido-mysql

icinga2 feature enable command

apt install icingaweb2 icingacli -y

# Optional GUI package
# apt install icinga2-studio

icinga2 api setup

# vim /etc/php/7.0/apache2/php.ini
# date.timezone = "America/Los_Angeles"

service icinga2 restart
service apache2 restart
service mysql restart

### Go though web setup
# http://HOST/icingaweb2/authentication/login

# Command Transport
# * icinga2 api [or]
# * local command file (yes)

# Verify
# tail -f /var/log/icinga2/icinga2.log

# Check config
# vim /etc/icinga2/features-available/ido-mysql.conf

# Check for errors
# icinga2 daemon -C
