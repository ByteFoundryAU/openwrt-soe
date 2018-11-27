#!/bin/bash

make clean
mkdir -p files/etc/config

make image \
    FILES=files/ \
    PROFILE=ubnt-uap-pro \
    PACKAGES="-dnsmasq -ppp -ppp-mod-pppoe -kmod-ppp* ethtool lldpd wireless-tools -kmod-usb-core -kmod-usb-ohci -kmod-usb2 haveged snmpd"

