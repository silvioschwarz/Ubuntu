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
sudo apt-get install language-selector-gnome language-pack-gnome-de gksu 
gksudo gnome-language-selector

#configure
mkdir ~/.themes
wget -c -O macOSTheme.zip https://github.com/B00merang-Project/macOS-High-Sierra/releases/download/3.2/macOS-High-Sierra-Dark-3.2.zip
unzip macOSTheme.zip -d ~/.themes
gsettings set org.gnome.desktop.interface gtk-theme "macOS High Sierra Dark"
gsettings set org.gnome.desktop.wm.preferences theme "macOS High Sierra Dark"


gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.desktop.interface clock-show-seconds true
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle'
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.freedesktop.Tracker.Miner.Files enable-monitors false
gsettings set org.freedesktop.Tracker.Miner.Files crawling-interval -2
gsettings set org.gnome.Evince.Default window-ratio (3.2265111667534909, 1.2503859215807349)
gsettings set org.gnome.desktop.background show-desktop-icons true
gsettings set org.gnome.Evince.Default window-ratio (3.2265111667534909, 1.2503859215807349)
gsettings set org.gtk.Settings.FileChooser window-position (1036, 225)
gsettings set org.gnome.nautilus.desktop home-icon-visible true
gsettings set org.gnome.nautilus.desktop trash-icon-visible true
gsettings set org.gnome.nautilus.desktop network-icon-visible true
gsettings set org.gnome.nautilus.desktop volumes-visible true
gsettings set org.gnome.nautilus.desktop home-icon-visible true
gsettings set org.gnome.nautilus.desktop trash-icon-visible true
gsettings set org.gnome.nautilus.desktop network-icon-visible true
gsettings set org.gnome.nautilus.desktop volumes-visible true


./refindC.sh
