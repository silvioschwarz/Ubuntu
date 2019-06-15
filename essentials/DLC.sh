#! /bin/sh

echo "DLC"

echo "Twitter"
sudo apt-get install corebird 

echo "Installing Steam"
sudo apt install python-apt
wget -c -O steam.deb https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb
rm steam.deb

echo "Installing Rainlendar"
wget -c -O rainlendarpro.deb http://www.rainlendar.net/download/b158/rainlendar2-pro_2.14.3.b158-1_amd64.deb
sudo dpkg -i rainlendarpro.deb
rm rainlendarpro.deb

echo "Installing printer"
./printer.sh

echo "Installing mendeley client"
wget -c -O mendeley.deb https://www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest 
#mendeleydesktop_[0-9\.]+-stable_amd64.deb
sudo dpkg -i mendeley.deb
rm mendeley.deb

echo "Installing evernote client"

snap install tusk

echo "Installing Telegram"
wget -c -O telegram https://telegram.org/dl/desktop/linux

#echo "Installing Synology"
#wget -c -O synology.deb https://global.download.synology.com/download/Tools/Assistant/6.1-15163/Ubuntu/x86_64/synology-assistant_6.1-15163_amd64.deb
#sudo dpkg -i synology.deb
#rm synology.deb

#wget -c -O synologyCS.deb https://global.download.synology.com/download/Tools/CloudStationBackup/4.2.6-4408/Ubuntu/Installer/x86_64/synology-cloud-station-backup-4408.x86_64.deb
#sudo dpkg -i synologyCS.deb
#rm synologyCS.deb

echo "Installing skype"
wget -c -O skype.deb https://go.skype.com/skypeforlinux-64.deb
sudo dpkg -i skype.deb
rm skype.deb

#echo "Installing Franz"
#wget -c https://github.com/meetfranz/franz-app-legacy/releases/download/4.0.4/Franz-linux-x64-4.0.4.tgz
#tar -xvf Franz-linux-x64-4.0.4.tgz Franz/
#cd Franz
#sudo apt-get install libgconf-2-4
#./Franz

#echo "Installing Slack"
#sudo snap install slack --classic
sudo apt install libpango1.0-0

echo "INSTALLING Dropbox"
sudo apt install python-gpg

wget -c -O dropbox.deb https://linux.dropbox.com/packages/ubuntu/$(wget -q https://linux.dropbox.com/packages/ubuntu/ -O - | egrep -o "dropbox_[0-9\.]+_amd64.deb"| sort -V  | tail -1)
sudo dpkg -i dropbox.deb
rm dropbox.deb
~/.dropbox-dist/dropboxd

echo "INSTALLING GOOGLE CHROME BROWSER"
echo
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome* 
sudo apt-get -f install
rm google*

echo "INSTALLING VIVALDI BROWSER"

wget -c -O vivaldi.deb https://downloads.vivaldi.com/stable/$(wget -q https://vivaldi.com/download/ -O - | egrep -o "vivaldi-stable_[0-9\.]+-[0-9]+_amd64.deb"| sort -V  | tail -1)
sudo dpkg -i vivaldi.deb
rm vivaldi.deb

echo "INSTALLING ATOM EDITOR"
wget -c -O atom.deb https://atom.io/download/deb/atom-amd64.deb
sudo dpkg -i atom.deb
rm atom.deb

sudo apt-get install plymouth-x11 
