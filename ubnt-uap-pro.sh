#!/bin/bash

make clean
mkdir -p files/etc/{dropbear,config}

make image \
    PROFILE=ubnt-uap-pro \
    FILES=files/ \
    PACKAGES="-dnsmasq -ppp -ppp-mod-pppoe -kmod-ppp*  \
        -kmod-usb-core -kmod-usb-ohci -kmod-usb2 \
        ethtool lldpd wireless-tools \
        haveged snmpd hostapd-utils \
        "
#       tar"  # add tar if backing up with backuppc
#       luci-ssl"   # add luci-ssl if a ui is needed
