# [DHCP](http://en.wikipedia.org/wiki/Dynamic_Host_Configuration_Protocol)
internal DHCP server infrastructure on APT Linux.
## Infrastructure
### DHCP servers
| Host | Role | Private FQDN | Private IP Address |
| --- | --- | --- | --- |
| ns1 | Primary DNS Server | ns1.net1.domain | 10.128.10.11 |
| ns2 | Secondary DNS Server | ns2.net1.domain | 10.128.20.12 |
<!-- @todo ns3  Tertiary DNS Server  ns3.net1.domain  10.128.30.13 -->
### clients
| Private IP Address | MAC |
| --- | --- |
| 10.128.100.101 | C8:0A:A9:0B:58:91 |
## install
- add admin user
- set Private IP Address with netmask ```255.255.0.0```
- install and config by shell script
```
# on 10.128.10.11
./bin/install-config-ns1.sh
# on 10.128.20.12
./bin/install-config-ns2.sh
```
## hardware
### pc
| Brand | Series | Model | CPU | memory (GB) | MAC | Private IP Address |
| --- | --- | --- | --- | --- | --- | --- |
| [Acer](http://acer.com) | Aspire | [Z5600](http://acer.com/ac/en/US/content/support-product/1243;-;AZ5600) | Celeron N3050 @ 1.60gHZ * 2 | 4 | C8:0A:A9:0B:58:91 |