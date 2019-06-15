#! /bin/sh

#echo "Installing Rainlendar"
#wget -c -O rainlendarpro.deb http://www.rainlendar.net/download/b158/rainlendar2-pro_2.14.3.b158-1_amd64.deb
#sudo dpkg -i rainlendarpro.deb
#rm rainlendarpro.deb

echo -n "INSTALLING Dropbox"
echo
sudo apt install libpango1.0-0
wget -c -O dropbox.deb https://linux.dropbox.com/packages/ubuntu/$(wget -q https://linux.dropbox.com/packages/ubuntu/ -O - | egrep -o "dropbox_[0-9\.]+_amd64.deb"| sort -V  | tail -1)
sudo dpkg -i dropbox.deb
rm dropbox.deb
~/.dropbox-dist/dropboxd

echo -n "INSTALLING GOOGLE CHROME BROWSER"
echo
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome* 
sudo apt-get -f install
rm google*

echo -n "INSTALLING VIVALDI BROWSER"
echo

sudo apt-get install libappindicator1

wget -c -O vivaldi.deb https://downloads.vivaldi.com/stable/$(wget -q https://vivaldi.com/download/ -O - | egrep -o "vivaldi-stable_[0-9\.]+-[0-9]+_amd64.deb"| sort -V  | tail -1)
sudo dpkg -i vivaldi.deb
rm vivaldi.deb
