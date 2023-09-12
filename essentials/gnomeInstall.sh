#!/bin/sh

. "$(dirname "$0")"/shellColors.sh
echo -n "${BLUE}#####################"
echo -n  "NEW INSTALL OF UBUNTU GNOME"
echo -n "############################"
echo -n  "${NORMAL}"
echo 
sleep 10


sudo chmod +rwx *.sh


#3rd Party DRIVERS
echo -n "############################"
echo -n "INSTALLING 3rd Party DRIVERS"
echo -n "############################"
echo

#sudo ubuntu-drivers list
#sudo ubuntu-drivers devices
sudo ubuntu-drivers autoinstall 
echo
echo
#sudo apt install -y  nvidia-375 intel-microcode

echo -n "############################"
echo -n "INSTALLING GNOME"
echo -n "############################"
echo

sudo apt install -y  gnome-core ubuntu-gnome-wallpapers gnome gnome-shell gnome-session gnome-session-flashback

#UBUNTU PACKAGES
echo -n "##########################"
echo -n "INSTALLING UBUNTU PACKAGES" 
echo -n "##########################"
echo

sudo apt install -y  enigmail gnupg thunderbird
#https://addons.thunderbird.net/thunderbird/downloads/latest/quick-locale-switcher/addon-1333-latest.xpi?src=ss

sudo apt install -y  texmaker texlive texlive-lang-german texlive-latex-extra texlive-fonts-recommended texlive-fonts-extra


sudo apt install -y  git git-core git-gui git-doc 
git config --global user.name "Silvio Schwarz"
git config --global user.email admin@silvioschwarz.com

sudo apt install -y  gconf-editor gimp gimp-help-de language-pack-gnome-de ubuntu-restricted-extras bleachbit plank gnome-control-center gnome-online-accounts

sudo apt install -y indicator-applet-complete gnome-tweak-tool chrome-gnome-shell
sudo apt install -y build-essential libbluetooth-dev g++ gfortran make gcc
sudo apt install -y openssh-server

sudo apt install -y network-manager-openvpn-gnome

sudo apt install -y pdfshuffler pdfsam
sudo apt install -y plocate powertop preload
sudo apt install ubuntu-restricted-extras
sudo apt install libavcodec-extra
sudo apt install libdvd-pkg


#wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'

