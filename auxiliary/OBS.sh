#! /bin/sh

sudo apt install ffmpeg
sudo apt install v4l2loopback-dkms

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio
