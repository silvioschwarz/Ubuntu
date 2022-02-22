#! /bin/sh
#wget -c -O anaconda.sh https://repo.anaconda.com/archive/$(wget -q https://repo.anaconda.com/archive/ -O - | egrep -o "Anaconda3-[0-9\.]+-Linux-x86_64.sh"| sort -V  | tail -1)

wget -c -O miniconda.sh https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
sudo chmod +x miniconda.sh
./miniconda.sh

#export PATH=~/miniconda/bin:$PATH
#bash Miniconda3-latest-Linux-x86_64.sh

conda update conda

#uninstall 
#rm -rf ~/miniconda
#rm -rf ~/.condarc ~/.conda ~/.continuum
