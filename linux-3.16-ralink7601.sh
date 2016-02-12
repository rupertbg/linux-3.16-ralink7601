#!/bin/bash

## RUN AS ROOT!
## Installs Ralink 7601/760b USB Wifi adapter on ~3.16 kernel

apt-get install linux-headers-generic build-essential git -y
git clone https://github.com/porjo/mt7601.git
cd mt7601/src
make
make install
mkdir -p /etc/Wireless/RT2870STA/
cp RT2870STA.dat /etc/Wireless/RT2870STA/
modprobe mt7601Usta

exit 0
