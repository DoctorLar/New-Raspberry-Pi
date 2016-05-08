# This script brings your RPi up to current versions and clean archive files out.  It takes a while to run.

apt-get update --assume-yes
apt-get upgrade --assume-yes
apt-get dist-upgrade --assume-yes
apt-get autoremove –purge --assume-yes
rpi-update --assume-yes
apt-get install apt-transport-https -y --force-yes

## install chrome
apt-get install chromium --yes

## Add CUPS & Gutenprint
wget https://raw.githubusercontent.com/DoctorLar/rpi-cups-gutenprint/master/install.sh
chmod +x install.sh
sudo ./install.sh

## Install tightvnc
sudo apt-get install tightvncserver
tightvncserver
raspberry --force-yes
raspberry --force-yes
n --assume-no
cd /etc/init.d/
wget https://raw.githubusercontent.com/DoctorLar/New-Raspberry-Pi/master/vncboot
chmod 755 /etc/init.d/vncboot
update-rc.d /etc/init.d/vncboot defaults
update-rc.d vncboot defaults
