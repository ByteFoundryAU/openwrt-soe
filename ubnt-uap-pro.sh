#!/bin/bash

make clean
mkdir -p files/etc/{dropbear,config}

make image \
    PROFILE=ubnt-uap-pro \
    FILES=files/ \
    PACKAGES="-dnsmasq -ppp -ppp-mod-pppoe -kmod-ppp* ethtool lldpd wireless-tools -kmod-usb-core -kmod-usb-ohci -kmod-usb2 haveged snmpd tar"

