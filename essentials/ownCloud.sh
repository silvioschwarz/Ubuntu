#! /bin/sh

wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Ubuntu_18.10/Release.key -O Release.key
sudo apt-key add - < Release.key
sudo apt-get update

sudo sh -c "echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Ubuntu_18.04/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list"
sudo apt-get update
sudo apt-get install owncloud-client
