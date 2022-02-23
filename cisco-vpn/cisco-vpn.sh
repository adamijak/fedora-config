#! /bin/bash
echo "Do not run as script. Execute commands interactively" && exit
# Download and install libproidplus-gui-2.3.3-0.x86_64.rpm from https://proid.cz
# then register it as p11 module
echo /usr/lib64/libproidcm11.so > /usr/share/p11-kit/modules/proid.module

# Trust certificates
sudo trust anchor cair3.cer
sudo trust anchor caiof3.cer

# Comment insecure-hash = SHA1
sudo gedit /etc/crypto-policies/back-ends/gnutls.config

# Connect
nu ./vpn.nu
