#! /bin/sh

. "$(dirname "$0")"/shellColors.sh

echo -n  "${BLUE}NEW INSTALL OF RETROPI"
echo -n  "${NORMAL}"
echo 

#RETROPI

sudo apt-get update && sudo apt-get upgrade
sudo apt-get install -y git dialog unzip xmlstarlet
git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git
cd RetroPie-Setup
sudo ./retropie_setup.sh
