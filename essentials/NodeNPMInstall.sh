#! /bin/sh
#https://nodejs.org/dist/v10.15.0/node-v10.15.0-linux-x64.tar.xz

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.34.0/install.sh | bash

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs

source ~/.bashrc
source ~/.profile

#sudo apt-get install nodejs-legacy
#nvm install node
echo "TESTING NODEJS"
node -e "console.log('Hello from Node.js ' + process.version)"

sleep 10

echo "INSTALLING NPM"
 
#sudo apt-get install npm
#nvm install npm
echo "INSTALLING ELECTRON"
npm install electron --save-dev --save-exact

echo "INSTALLING ELECTRON QUICKSTART"
git clone https://github.com/electron/electron-quick-start
cd electron-quick-start
npm install
npm start

cd ..


echo "IMSTALLING ELECTRON FIDDLE"
https://github.com/electron/fiddle/releases/download/v0.5.0/electron-fiddle_0.5.0_amd64.deb
wget https://github.com/electron/fiddle/releases/latest
/electron-fiddle_0.5.0_amd64.deb

sudo apt-get update
sudo apt-get install build-essential chrpath libssl-dev libxft-dev libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev
npm install phantomjs

