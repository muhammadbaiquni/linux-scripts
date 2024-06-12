#!/bin/bash

fallocate -l 10G /swapfile
chmod 600 /swapfile

mkswap /swapfile
swapon /swapfile

#auto mount swap
echo "/swapfile none swap sw 0 0" >> /etc/fstab

#edit swappines
echo "vm.swappiness=10" >> /etc/sysctl.conf

reboot