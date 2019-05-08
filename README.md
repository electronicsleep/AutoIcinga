# AutoIcinga

* Tools for Icinga, Graphite, Grafana and Prometheus

* Quickstart info for Icinga, automation tests and ideas

* Notes on how to install graphing plugin with Icinga

* Simple system for Icinga checks and configuration

### Modify the hosts config
vim /etc/icinga2/conf.d/hosts.conf

### Modify the check defaults
vim /usr/share/icinga2/include/command-plugins.conf

### Validate config
icinga2 daemon -C && service icinga2 restart

### See AutoNagios
https://github.com/electronicsleep/AutoNagios
