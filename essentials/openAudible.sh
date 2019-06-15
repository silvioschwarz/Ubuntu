#! /bin/sh

wget -c -O OpenAudible.deb https://github.com/openaudible/openaudible/releases/download/v1.4.3/OpenAudible_deb_1.4.3.deb
sudo dpkg -i OpenAudible.deb
sudo rm -rf OpenAUdible.deb
