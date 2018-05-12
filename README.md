# AutoIcinga

* Instructions tested on Debian 9

* Quickstart info for Icinga

* Tools to automate and make Icinga easier to manage and understand.

* Simple system for Icinga checks and configuration.

* Notes on how to install graphing plugin with Icinga.

apt install dnsutils

### Modify the hosts config
vim /etc/icinga2/conf.d/hosts.conf

### Modify the check defaults
vim /usr/share/icinga2/include/command-plugins.conf

### Validate config
icinga2 daemon -C

### See AutoNagios
https://github.com/electronicsleep/AutoNagios
