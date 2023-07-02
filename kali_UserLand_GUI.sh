#!/bin/bash

sleep 1

echo -e "\e[93mKali Linux UserLand GUI Setup\e[0m"
echo " "
echo " "
sleep 2
echo -e "\e[93mCoded By MRX7014\e[0m"
echo " "
echo " "
sleep 2
echo -e "\e[93mSetup Starting Now\e[0m"
sleep 1
echo " "
echo " "
#Get the necessary components
apt-get update
apt-get install xfce4 xfce4-terminal tightvncserver dbus-x11 -y
apt-get install xfe -y
apt-get kali-themes
apt-get clean

#Install Brave Browser
sudo apt install curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser

#Setup the necessary files
mkdir ~/.vnc
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/xstartup --no-check-certificate -P ~/.vnc/
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/vncserver-start --no-check-certificate -P /usr/local/bin/
wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/vncserver-stop --no-check-certificate -P /usr/local/bin/

chmod +x ~/.vnc/xstartup
chmod +x /usr/local/bin/vncserver-start
chmod +x /usr/local/bin/vncserver-stop

echo " "
echo "You can now start vncserver by running vncserver-start"
sleep 2
echo " "
echo "It will ask you to enter a password when first time starting it."
echo " "
sleep 2
echo "The VNC Server will be started at Localhost:1"
echo " "
sleep 2
echo "You can connect to this address with a VNC Viewer you prefer"
echo " "
sleep 2
echo "Connect to this address will open a window with Xfce4 Desktop Environment with Kali Theme"
echo " "
echo " "
echo " "
sleep 2
echo "Running vncserver-start"
echo " "
echo " "
echo " "
sleep 2
echo "To Kill VNC Server just run vncserver-stop"
echo " "
echo " "
echo " "

echo "export DISPLAY=":1"" >> /etc/profile
source /etc/profile

vncserver-start
