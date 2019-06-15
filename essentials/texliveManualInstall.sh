#! /bin/sh

apt search texlive | grep Installiert 
mkdir install-tl && cd install-tl 
wget -O - -- http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz | tar xzf - --strip-components=1 
sudo -s 
apt install tex-common texinfo equivs perl-tk perl-doc 
./install-tl 
exit
cd .. && rm -ir install_tl 

  PATH=/usr/local/texlive/2018/bin/x86_64-linux:$PATH 

tlmgr update --list

tlmgr update --all

