#!/bin/bash
# sudo apt-get install make cmake g++ qtbase qttools5 libgcrypt zlib libxi libxtst qtx11extras libyubikey libykpers-1
#
#
# echo "KEEPASSXC INSTALLATION"
# git clone https://github.com/keepassxreboot/keepassxc.git
#
# cd keepassxc
#
# mkdir build
# cd build
# cmake -DWITH_XC_AUTOTYPE=ON -DWITH_XC_HTTP=ON -DWITH_XC_YUBIKEY=ON \
#     -DCMAKE_BUILD_TYPE=Release ..
# make -j8
# sudo make install

#sudo snap install keepassxc

sudo add-apt-repository ppa:phoerious/keepassxc
sudo apt-get update
sudo apt install keepassxc
