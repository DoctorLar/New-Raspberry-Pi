# This script brings your RPi up to current versions and clean archive files out.  It takes a while to run.

apt-get update --assume-yes
apt-get upgrade --assume-yes
apt-get dist-upgrade --assume-yes
apt-get autoremove –purge --assume-yes
rpi-update --assume-yes
apt-get install apt-transport-https -y --force-yes

## install chrome
wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser-l10n_45.0.2454.85-0ubuntu0.15.04.1.1181_all.deb
wget https://dl.dropboxusercontent.com/u/87113035/chromium-browser_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb
wget https://dl.dropboxusercontent.com/u/87113035/chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb
sudo dpkg -i chromium-codecs-ffmpeg-extra_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb
sudo dpkg -i chromium-browser-l10n_45.0.2454.85-0ubuntu0.15.04.1.1181_all.deb chromium-browser_45.0.2454.85-0ubuntu0.15.04.1.1181_armhf.deb

## Add CUPS & Gutenprint
wget https://raw.githubusercontent.com/DoctorLar/rpi-cups-gutenprint/master/install.sh
chmod +x install.sh
sudo ./install.sh

## Install tightvnc
sudo apt-get install tightvncserver --assume-yes
tightvncserver
raspberry --force-yes
raspberry --force-yes
n --assume-no
wget https://raw.githubusercontent.com/DoctorLar/New-Raspberry-Pi/master/vncboot
mv ~vncboot /etc/init.d/
chmod 755 /etc/init.d/vncboot
update-rc.d /etc/init.d/vncboot defaults
update-rc.d vncboot defaults
sudo reboot
