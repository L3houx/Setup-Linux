#!/bin/sh

#Install dependencies
apt-get install gconf-service gconf-service-backend gconf2 gconf2-common libgconf-2-4 python-doc python-tk python2-doc python2.7-doc binfmt-support libappindicator1 libindicator7 libpython-stdlib libpython2-stdlib python python-minimal python2 python2-minimal python2.7 python2.7-minimal libmono-system-windows-forms4.0-cil libmono-system-web4.0-cil libmono-system-net4.0-cil libmono-system-runtime-serialization4.0-cil libmono-system-xml-linq4.0-cil -y

#Install Keybase
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f

#Install Dirb
sudo apt-get install dirb -y

#Install Nikto
sudo apt-get install nikto -y

#Install Curl
sudo apt-get install curl -y

#Install git
sudo apt-get install git -y

#Install feh
sudo apt-get install feh -y

#Install net-tools (ifconfig)
sudo apt-get install net-tools -y

#Install Flameshot
sudo apt-get install flameshot -y

#Install Okular (PDF reader)
sudo apt-get install okular -y

#Install Arp-Scan
sudo apt-get install arp-scan -y

#Install wine
sudo apt-get install wine -y

#Install acpi
sudo apt-get install acpi -y

#Install xBacklight
sudo apt-get install xbacklight -y

#Install Binwalk
sudo apt-get install binwalk -y

#Install Foremost
sudo apt-get install foremost -y

#Install Exiftool
sudo apt-get install libimage-exiftool-perl -y

#Install Pngcheck
sudo apt-get install pngcheck -y

#Install GDB
sudo apt-get install gdb -y

#Install Steghide
sudo apt-get install steghide -y

#Install Sonic Visualiser
sudo apt-get install sonic-visualiser -y

#Install Stegosuite
sudo apt-get install stegosuite -y

#Install 7z
sudo apt-get install p7zip-full -y

#Install Htop
sudo apt-get install htop -y

#Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y
sudo apt-get install spotify-client -y

#Bitwarden
wget "https://vault.bitwarden.com/download/?app=desktop&platform=linux&variant=appimage" --max-redirect 5 -O ~/Desktop/Setup-Linux/programs/Bitwarden.AppImage
sudo chmod +x ~/Desktop/Setup-Linux/programs/Bitwarden.AppImage
sudo ln -s ~/Desktop/Setup-Linux/programs/Bitwarden.AppImage /bin/bitwarden

#Install Slack
SLACK_VERSION=`curl -sL https://slack.com/intl/es/release-notes/linux | grep "<h2>Slack [0-9].[0-9].[0-9]</h2>" -o| cut -d$'\n' -f 1| cut -d "<" -f 2 | cut -d " " -f 2`
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-$SLACK_VERSION-amd64.deb -O ~/Desktop/Setup-Linux/programs/slack.deb
sudo dpkg -i ~/Desktop/Setup-Linux/programs/slack.deb

#Install Burpsuite Community
wget "https://portswigger.net/burp/releases/download?product=community&type=linux" -O ~/Desktop/Setup-Linux/programs/burpsuite.sh
chmod +x ~/Desktop/Setup-Linux/programs/burpsuite.sh
bash ~/Desktop/Setup-Linux/programs/burpsuite.sh

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
sudo -u L3houx git clone https://github.com/L3houx/I3-Setup.git ~/Desktop/
sudo -u L3houx cp -r ~/Desktop/I3-Setup/* ~/.config/
i3 restart

#Change the file permission to be able to change the brigthness wth a python script
sudo chmod 666 /sys/class/backlight/*/brightness
sudo chmod 666 /sys/class/backlight/*/actual_brightness

