#!/bin/bash

make clean
mkdir -p files/etc/config

make image \
    FILES=files/ \
    PROFILE=ubnt-unifi \
    PACKAGES="-dnsmasq -ppp -ppp-mod-pppoe -kmod-ppp* ethtool lldpd wireless-tools -kmod-usb-core -kmod-usb-ohci -kmod-usb2 haveged snmpd hostapd-utils"
#       tar"  # add tar if backing up with backuppc
#       luci-ssl"   # add luci-ssl if a ui is needed
