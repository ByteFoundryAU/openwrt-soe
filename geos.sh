#!/bin/bash

# from https://openwrt.org/docs/guide-user/installation/openwrt_x86

# combined-squashfs.img.gz This disk image uses the traditional OpenWrt layout, a squashfs read-only root filesystem and a read-write partition where settings and packages you install are stored. Due to how this image is assembled, you will have only 230-ish MB of space to store additional packages and configuration, and Extroot does not work.
# combined-ext4.img.gz This disk image uses a single read-write ext4 partition with no read-only squashfs root filesystem, which allows to enlarge the partition. Features like Failsafe Mode or Factory Reset won't be available as they need a read-only squashfs partition to function.

make clean
mkdir -p files/etc/{dropbear,config}

make image \
    PROFILE=Geos \
    FILES=files/ \
    PACKAGES="ethtool lldpd wireless-tools rng-tools snmpd tar \
    br2684ctl tcpdump usbutils usb-modeswitch wwan ipset \
    kmod-ath9k kmod-crypto-hw-geode openvpn-openssl \
    luci-theme-openwrt \
    luci-app-upnp luci-app-firewall luci-app-openvpn luci-app-attendedsysupgrade \
    luci-proto-3g luci-proto-ipv6 luci-proto-ppp \
    luci-mod-admin-full \
    luci-app-statistics"
# kmod-solos-pci soloscli br2684ctl
