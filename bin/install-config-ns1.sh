#!/usr/bin/env bash

export HOST=ns1

bin/install.sh

sudo patch -d /etc/default < etc/${HOST}/default/isc-dhcp-server.diff
sudo patch -d /etc/dhcp < etc/dhcp/dhcpd.conf.diff

sudo systemctl restart isc-dhcp-server.service

sudo cp etc/${HOST}/netplan/* /etc/netplan
sudo netplan apply

# dhcp-lease-list