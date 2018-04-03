#!/bin/bash

apt install icinga2 nagios-plugins monitoring-plugins curl wget

apt install vim-icinga2 vim-addon-manager

apt install mysql-server mysql-client icinga2-ido-mysql

apt install icinga2-studio

vim-addon-manager -w install icinga2

icinga2 feature enable ido-mysql

icinga2 feature enable command

apt install icingaweb2 icingacli

icingacli setup token create
