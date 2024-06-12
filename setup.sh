#!/bin/bash

#setup user
useradd -m -d /home/baiquni -s /bin/bash baiquni
usermod -aG sudo baiquni
echo "baiquni ALL=(ALL) NOPASSWD:ALL" | tee /etc/sudoers.d/baiquni

#setup ssh
mkdir -p /home/baiquni/.ssh
chmod 700 /home/baiquni/.ssh
echo ssh-rsa [isi dengan ssh pubkey] > /home/baiquni/.ssh/authorized_keys
chmod 600 /home/baiquni/.ssh/authorized_keys
chown -R baiquni:baiquni /home/baiquni

#setup php
apt update && upgrade -y
apt install php php-sqlite3 php-cli php-common php-zip php-gd php-mbstring php-curl php-xml php-pear php-bcmath zip unzip sqlite3 -y
