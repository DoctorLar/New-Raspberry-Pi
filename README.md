# New-Raspberry-Pi

### Installation ###

#### Initial Pi setup ####

1. Download the latest raspbian instance from https://www.raspberrypi.org/downloads/ (recommend: 2015-11-21-raspbian-jessie-lite)
1. Unzip the zip file, using p7zip if unzip can't do it (`brew install p7zip`, `7za x [filename]`)
1. Install the image on to a Pi. Recommend if you have a mac: http://alltheware.wordpress.com/2012/12/11/easiest-way-sd-card-setup/
1. Boot your Pi
1. Figure out your Pi's IP address on the network
  * Run a port scan on your network eg `nmap -sn 192.168.0.0/24`
  * More info can be found at https://www.raspberrypi.org/documentation/troubleshooting/hardware/networking/ip-address.md
1. ssh into your Pi: `ssh pi@[your ip address]`. When the password prompt appears, type `raspberry`
1. If you need to configure your Pi for Wifi access, the on the Pi
  * `sudo vi /etc/wpa_supplicant/wpa_supplicant.conf`
  * Add a new section: `network={ ssid="testing" psk="testingPassword" }`, then save using `:wq`
  * `sudo ifdown wlan0`
  * `sudo ifup wlan0`
  * More info can be found at https://www.raspberrypi.org/documentation/configuration/wireless/wireless-cli.md
1. Expand the file system and reboot using `sudo raspi-config`

https://raw.githubusercontent.com/DoctorLar/New-Raspberry-Pi/master/config.sh

#### Installation ####

1. Download the install file `wget https://raw.githubusercontent.com/DoctorLar/New-Raspberry-Pi/master/config.sh`
2. Make it executable `chmod +x configure.sh`
3. Execute it with root permissions `sudo ./configure.sh`

This installation takes over an hour.......it does lots of stuff!
