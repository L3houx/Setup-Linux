#!/bin/sh

#Install dependencies
apt-get install gconf-service gconf-service-backend gconf2 gconf2-common libgconf-2-4 python-doc python-tk python2-doc python2.7-doc binfmt-support libappindicator1 libindicator7 libpython-stdlib libpython2-stdlib python python-minimal python2 python2-minimal python2.7 python2.7-minimal libmono-system-windows-forms4.0-cil libmono-system-web4.0-cil libmono-system-net4.0-cil libmono-system-runtime-serialization4.0-cil libmono-system-xml-linq4.0-cil -y

#Install Curl
apt-get install curl -y

#Install git
apt-get install git -y

#Install feh
sudo apt install feh -y

#Install net-tools (ifconfig)
apt-get install net-tools -y

#Install VirtualBox
apt-get install virtualbox -y

#Install Flameshot
apt-get install flameshot -y

#Install Okular (PDF reader)
sudo apt-get install okular -y

#Install Arp-Scan
sudo apt-get install arp-scan -y

#Install wine
sudo apt install wine -y

#Install acpi
sudo apt install acpi -y

#Install xBacklight
sudo apt install xbacklight -y

#Install Binwalk
apt-get install binwalk -y

#Install Foremost
apt-get install foremost -y

#Install Exiftool
apt-get install libimage-exiftool-perl -y

#Install Pngcheck
apt-get install pngcheck -y

#Install GDB
apt-get install gdb -y

#Install Steghide
apt-get install steghide -y

#Install Sonic Visualiser
apt install sonic-visualiser -y

#Install Stegosuite
apt-get install stegosuite -y

#Install 7z
sudo apt install p7zip-full -y

#Install Htop
sudo apt  install htop -y

#Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client -y


########## This section need to be optimize ##########
#Bitwarden
#dpkg -i programs_installation/Bitwarden-1.12.0-amd64.deb

#Install Slack
#dpkg -i programs_installation/slack-desktop-3.3.3-amd64.deb

#Install Burpsuite Community
#bash programs_installation/burpsuite_community_linux_v1_7_36.sh

#Install 010Editor
#bash programs_installation/010EditorLinux64Installer

#Install VisualStudio Code
#dpkg -i programs_installation/code_1.28.2-1539735992_amd64.deb

#Install Google Chrome
#dpkg -i programs_installation/google-chrome-stable_current_amd64.deb

#Install WPS (Office)
#dpkg -i programs_installation/wps-office_10.1.0.6757_amd64.deb

#Install Keybase
#dpkg -i programs_installation/keybase_amd64.deb

#####################################################

#Set my I3 configuration
sudo apt-get install i3 -y
sudo -u L3houx git clone https://github.com/L3houx/I3-Setup.git
sudo -u L3houx cp -r I3-Setup/* ~/.config/
i3 restart


