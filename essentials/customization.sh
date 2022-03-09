#! /bin/sh





echo -n "##############"
echo -n "CUSTOMIZATIONS"
echo -n "##############"
echo

#sudo dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/use-theme-colors "false"


cat >> ~/.config/autostart/plank.desktop <<EOF
[Desktop Entry]
Type=Application
Exec=plank
Hidden=false
NoDisplay=false
Name[en_US]=plank
Name=plank
Comment[en_US]=plank
Comment=plank
X-GNOME-Autostart-Delay=2
X-GNOME-Autostart-enabled=true
EOF



echo -n "LANGUAGE SUPPORT"
echo
sudo apt-get install language-selector-gnome language-pack-gnome-de gksudo gnome-language-selector

#configure
mkdir ~/.themes
git clone https://github.com/vinceliuice/Mojave-gtk-theme.git
cd Mojave-gtk-theme

sudo apt install gtk2-engines-murrine gtk2-engines-pixbuf sassc optipng inkscape libglib2.0-dev-bin
#- libglib2.0-dev  `ubuntu 18.04` `debian 10.03` `linux mint 19`
#- libxml2-utils  `ubuntu 18.04` `debian 10.03` `linux mint 19`
#- glib2-devel  `Fedora` `Redhat`


./install.sh

#sudo snap install mojave-themes

#./installTux.sh

#-/refindC.sh
