#!/bin/sh

echo "INSTALLING R"

sudo apt install gdebi libxml2-dev libssl-dev libcurl4-openssl-dev libopenblas-dev r-base r-base-dev


sudo apt-get update -y
sudo apt-get install -y r-base r-base-dev r-recommended

#echo "INSTALLING RStudio"
sudo apt-get install libjpeg62

wget -c -O rstudio.deb https://download1.rstudio.org/rstudio-xenial-1.1.453-amd64.deb

sudo dpkg -i rstudio.deb
rm rstudio.deb
