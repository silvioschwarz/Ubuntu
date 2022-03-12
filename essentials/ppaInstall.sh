#! /bin/sh

echo -n "############"
echo -n "ADDING PPA'S"
echo -n "############"
echo 

#echo | sudo apt-add-repository ppa:rodsmith/refind
echo | sudo apt-add-repository ppa:linrunner/tlp
echo | sudo apt-add-repository ppa:numix/ppa
#echo | sudo apt-add-repository ppa:webupd8team/atom
#echo | sudo add-apt-repository ppa:phoerious/keepassxc

#wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
#sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update


echo -n "INSTALLING TLP"
sudo apt-get install -y tlp tlp-rdw
sudo tlp start

echo -n "INSTALLING NUMIX THEMES AND ICONS"
sudo apt-get install -y numix-icon-theme numix-icon-theme-circle

echo -n "INSTALLING rEFInd"
#sudo apt-get install refind

echo -n "INSTALLING ATOM EDITOR"
#sudo apt-get install atom

echo -n "INSTALLING KEEPASSXC"
#sudo apt-get install keepassxc

#sudo apt install calibre
#https://github.com/apprenticeharper/DeDRM_tools/releases/

./updates/update.sh
#apm install seti-ui monokai-seti todo-show minimap highlight-selected minimap-highlight-selected autoclose-html pigments linter linter-htmlhint linter-csslint linter-jshint auto-detect-indentation atom-beautify hydrogen jupyter-notebook emmet git-plus file-icons

