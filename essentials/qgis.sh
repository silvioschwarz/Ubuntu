#!/bin/sh

echo "INSTALLING QGIS"


DISTRO=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
CODENAME=$(lsb_release -cs)

FILE=/etc/apt/sources.list

LINE="\n # QGIS \n" 
grep -q "$LINE" "$FILE" ||  echo "$LINE" |  sudo tee -a "$FILE"  > /dev/null

#LINE="deb https://qgis.org/ubuntugis-ltr ${CODENAME} main" 
LINE="deb https://qgis.org/ubuntu/ ${CODENAME} main" 
grep -q "$LINE" "$FILE" || echo "$LINE" |  sudo tee -a "$FILE" > /dev/null

#LINE="deb-src https://qgis.org/ubuntugis-ltr ${CODENAME} main" 
LINE="deb-src https://qgis.org/ubuntu/ ${CODENAME} main"
grep -q "$LINE" "$FILE" ||  echo "$LINE" |  sudo tee -a "$FILE" > /dev/null

#LINE="deb https://qgis.org/ubuntugis-ltr ${CODENAME} main" 
#grep -q "$LINE" "$FILE" ||  echo "$LINE" |  sudo tee -a "$FILE" > /dev/null

sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key CAEB3DC3BDF7FB45
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key 089EBE08314DF160
sudo apt-get install -y python-qt4 python-qt4-doc
sudo apt-get update -y
sudo apt-get install -y qgis python-qgis qgis-plugin-grass



