#!/bin/sh

#Install dependencies
sudo apt-get install gconf-service gconf-service-backend gconf2 gconf2-common libgconf-2-4 python-doc python-tk python2-doc python2.7-doc binfmt-support libappindicator1 libindicator7 libpython-stdlib libpython2-stdlib python python-minimal python2 python2-minimal python2.7 python2.7-minimal libmono-system-windows-forms4.0-cil libmono-system-web4.0-cil libmono-system-net4.0-cil libmono-system-runtime-serialization4.0-cil libmono-system-xml-linq4.0-cil fonts-font-awesome libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool automake compton -y

#Install ZSH
sudo apt-get install zsh -y

#Config ZSH
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
exit
cp ~/Desktop/dotFiles/.zshrc ~/.zshrc

#Install Dirb
sudo apt-get install dirb -y

#Install gimp
sudo apt-get install gimp -y

#Install Bless
sudo apt-get install bless -y

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

#Install Nmap
sudo apt-get install nmap -y

#Install Wireshark
sudo apt-get install wireshark -y

#Mkdir programs to download programs there
mkdir ~/Desktop/Setup-Linux/programs/

#Install Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y
sudo apt-get install spotify-client -y

#Install Bitwarden
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

#Install Keybase
curl --remote-name https://prerelease.keybase.io/keybase_amd64.deb -o ~/Desktop/Setup-Linux/programs/
sudo dpkg -i keybase_amd64.deb
sudo apt-get install -f

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
sudo -u L3houx git clone https://github.com/L3houx/dotFiles.git ~/Desktop/
sudo -u L3houx cp -r ~/Desktop/dotFiles/* ~/
i3 restart

#Install I3 Gaps (https://gist.github.com/boreycutts/6417980039760d9d9dac0dd2148d4783)
##Dependance needed to install Gaps
mkdir ~/Desktop/xcb-xrm
cd ~/Desktop/xcb-xrm
git clone https://github.com/Airblader/xcb-util-xrm
cd xcb-util-xrm
git submodule update --init
./autogen.sh --prefix=/usr
make
sudo make install && cd ~/Desktop/ && rm -r ~/Desktop/xcb-xrm

##I3 Gaps installation
mkdir ~/Desktop/i3-gaps
cd ~/Desktop/i3-gaps
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install && cd ~/Desktop && rm -r  ~/Desktop/i3-gaps

#Change the file permission to be able to change the brigthness wth a python script (https://www.linuxbabe.com/linux-server/how-to-enable-etcrc-local-with-systemd)
##Create service rc.local (command that are executed when starting)
sudo echo "[Unit]" >> /etc/systemd/system/rc-local.service
sudo echo " Description=/etc/rc.local Compatibility" >> /etc/systemd/system/rc-local.service
sudo echo " ConditionPathExists=/etc/rc.local" >> /etc/systemd/system/rc-local.service
sudo echo "" >> /etc/systemd/system/rc-local.service
sudo echo "[Service]" >> /etc/systemd/system/rc-local.service
sudo echo " Type=forking" >> /etc/systemd/system/rc-local.service
sudo echo " ExecStart=/etc/rc.local start" >> /etc/systemd/system/rc-local.service
sudo echo " TimeoutSec=0" >> /etc/systemd/system/rc-local.service
sudo echo " StandardOutput=tty" >> /etc/systemd/system/rc-local.service
sudo echo " RemainAfterExit=yes" >> /etc/systemd/system/rc-local.service
sudo echo " SysVStartPriority=99" >> /etc/systemd/system/rc-local.service
sudo echo "" >> /etc/systemd/system/rc-local.service
sudo echo "[Install]" >> /etc/systemd/system/rc-local.service
sudo echo " WantedBy=multi-user.target" >> /etc/systemd/system/rc-local.service
##Write into the file /etc/rc.local to have permanent rights to write in brightness files
sudo echo "#!/bin/bash" >> /etc/rc.local
sudo echo "sudo chmod 666 /sys/class/backlight/*/brightness" >> /etc/rc.local
sudo echo "sudo chmod 666 /sys/class/backlight/*/actual_brightness" >> /etc/rc.local
sudo chmod +x /etc/rc.local
##Enable service
sudo systemctl enable rc-local
##Starting the service
sudo systemctl start rc-local.service

#Activate the cronjob to notify us when the battery is low
crontab -l > ~/Desktop/mycron
echo "2 * * * * export DISPLAY=:0.0 && ~/Desktop/dotFiles/.config/i3-battery-warning/battery-PopUp" >> ~/Desktop/mycron
crontab ~/Desktop/mycron
rm ~/Desktop/mycron

#Restart I3 to take all config in consideration
i3 restart
