#!/bin/sh
LANG="de_DE.UTF-8"

echo "Bereite Installation vor ..."
sudo apt-get install ffmpeg python-pip chromium
sudo pip install requests
sudo pip install selenium

echo "Richte nun audible activator ein ..."
mkdir aax2mp3tools
cd aax2mp3tools
wget https://github.com/inAudible-NG/audible-activator/archive/master.zip
unzip master.zip
wget https://chromedriver.storage.googleapis.com/2.35/chromedriver_linux64.zip
unzip chromedriver_linux64.zip

echo "Räume auf ..."
rm master.zip
rm chromedriver_linux64.zip

echo "Starte nun den audible-Activator ..." 
cd audible-activator-master
echo "Bitte gib nun Dein audible-Username und das dazugehörige Passwort ein:"
./audible-activator.py -l de

echo "Bitte notiere Dir die 16 Stellen der ermittelten activation_bytes, beispielsweise 8a1ed00d"
exit
