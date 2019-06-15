#! /bin/sh

sudo add-apt-repository "deb http://archive.canonical.com/ubuntu `lsb_release -cs` partner"
sudo apt update
sudo apt install adobe-flashplugin
