Intro
-----
Steps to build an image:

1. wget https://downloads.openwrt.org/releases/18.06.1/targets/ar71xx/generic/openwrt-imagebuilder-18.06.1-ar71xx-generic.Linux-x86_64.tar.xz (or newer etc)
2. Extract the above
3. Copy the build script in to the extracted directory
4. Copy any files we want to build in to files/
5. Run the build script
6. Adjust and repeat

For the ubiquiti images, these are stripped down configs suitable as Access Points with either static or DHCP assigned IP addresses. There is no dhcp or dns function inbuilt.

Wishlist
--------
Rather than swapping in new files entirely, it would be great to work out how to just make slight changes to the defaults (via sed or perl oneliners).
