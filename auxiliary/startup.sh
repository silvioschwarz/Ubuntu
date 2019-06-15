#!/bin/sh

. "$(dirname "$0")"/shellColors.sh

echo -n "${BLUE}################################"
echo -n "UPDATING, UPGRADING AND CLEANING"
echo -n"################################"


echo -n "${GREEN}################################"
echo -n "THEM PIP'ERS"
echo -n "################################"
echo -n"${NORMAL}"
echo

#pip list --format=freeze --outdated | awk '{ print $1}' | xargs -n1 pip install -U
pip list --format legacy --outdated | sed 's/(.*//g' | xargs -n1 sudo -H pip install -U --no-cache	

echo -n "${GREEN}################################"
echo -n "NODE 'n' NPM"
echo -n "################################"
echo -n"${NORMAL}"
echo
npm install npm@latest -g
#sudo npm cache clean -f
#sudo n stable

echo -n "${BLUE}################################"
echo -n "DONE!"
echo -n "################################"
echo "${NORMAL}"
echo


