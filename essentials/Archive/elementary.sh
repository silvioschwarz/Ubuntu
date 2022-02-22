#! /bin/sh

gsettings set org.gnome.settings-daemon.plugins.xsettings overrides "{'Gtk/DialogsUseHeader': <0>, 'Gtk/ShellShowsAppMenu': <0>, 'Gtk/DecorationLayout': <'close:menu,maximize'>}"

sudo apt install software-properties-common

sudo add-apt-repository ppa:versable/elementary-update
sudo add-apt-repository ppa:papirus/papirus
sudo apt-add-repository ppa:tista/adapta

sudo apt update


sudo apt install elementary-tweaks
sudo apt install papirus-icon-theme
sudo apt install adapta-gtk-theme

sudo apt-get install elementary-tweaks elementary-plank-themes elementary-lion-theme elementary-thirdparty-icons

sudo apt-get install indicator-synapse wingpanel-slim


sudo apt install ubuntu-restricted-extras
sudo apt install libavcodec-extra
sudo apt install libdvd-pkg
sudo apt install wine
sudo apt install openssh-server


mkdir -p ~/.config/autostart

cp /etc/xdg/autostart/indicator-application.desktop ~/.config/autostart/

sed -i 's/^OnlyShowIn.*/OnlyShowIn=Unity;GNOME;Pantheon;/' ~/.config/autostart/indicator-application.desktop

wget http://ppa.launchpad.net/elementary-os/stable/ubuntu/pool/main/w/wingpanel-indicator-ayatana/wingpanel-indicator-ayatana_2.0.3+r27+pkg17~ubuntu0.4.1.1_amd64.deb

sudo dpkg -i wingpanel-indicator-ayatana_2.0.3+r27+pkg17~ubuntu0.4.1.1_amd64.deb

#Extract to /usr/share/themes or ~/.themes (create it (in your home folder) if necessary);
#git clone https://github.com/USBA/Apple-Arc-OSX-theme.git
#git clone https://github.com/thiagolucio/OSX-Arc-Shadow.git
#git clone https://github.com/B00merang-Project/macOS-Dark.git
