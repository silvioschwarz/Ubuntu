#!/bin/sh

echo -n "INSTALLING SEISMIC HANDLER"
echo
#seismic handler
sudo apt-get install make libmotif-dev libc6-dev tcsh xterm rlwrap x11proto-core-dev x11proto-print-dev x11proto-xext-dev libxt-dev libx11-dev xutils-dev libxext-dev libxpm-dev xfonts-100dpi xfonts-75dpi subversion

wget -c http://www.seismic-handler.org/chrome/site/SHM-2013a-install.sh

sudo chmod +rwx SHM-2013a-install.sh

sudo ./SHM-2013a-install.sh

cd
sudo chown -R $USER shfiles
rm *install.sh
rm *.tar.gz

echo -n "source /usr/local/sh/sh/setup/shsetup.sh" > ~/.bashrc

#SHX

sudo apt-get install python-sqlalchemy python-pysqlite2 
sudo apt-get install python-wxtools
sudo apt-get install python-wxpython

wget -c http://www.seismic-handler.org/export/HEAD/SHX/trunk/SeismicHandler/bin/setup.py
sudo python setup.py make
sudo python /tmp/install-shx.py
