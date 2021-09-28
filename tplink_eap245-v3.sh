#!/bin/bash

make clean
mkdir -p files/etc/{dropbear,config}

make image \
    PROFILE=tplink_eap245-v3 \
    FILES=files/ \
    PACKAGES="-dnsmasq -ppp -ppp-mod-pppoe -kmod-ppp*  \
        -kmod-usb-core -kmod-usb-ohci -kmod-usb2 \
        ethtool lldpd wireless-tools \
        haveged snmpd hostapd-utils iperf3 \
        collectd collectd-mod-conntrack collectd-mod-contextswitch collectd-mod-cpu collectd-mod-df collectd-mod-entropy collectd-mod-ethstat collectd-mod-interface collectd-mod-irq collectd-mod-iwinfo collectd-mod-load collectd-mod-memory collectd-mod-network collectd-mod-processes collectd-mod-uptime collectd-mod-wireless \
        "
#       tar"  # add tar if backing up with backuppc
#       luci-ssl"   # add luci-ssl if a ui is needed
