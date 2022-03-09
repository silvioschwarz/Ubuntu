#!/bin/sh

echo "INSTALLING GMT"

sudo apt-get install -y --allow-unauthenticated subversion build-essential cmake libcurl4-gnutls-dev libgdal-dev libfftw3-dev libpcre3-dev libnetcdf-dev liblapack-dev libblas-dev graphicsmagick texlive texlive-latex-extra python-sphinx

curl -s http://download.osgeo.org/geos/ | grep -Po "(?<=geos-)\K([0-9]|\.)*.tar.bz2" | sort -n | tail -n 1 | awk '$0="http://download.osgeo.org/geos/geos-"$0' | wget -c -qi - --show-progress

tar xvfj geos-*
cd geos-*
mkdir _build
cd _build
# Set up the build
cmake \
    -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_INSTALL_PREFIX=/usr/local \
    ..
# Run the build, test, install steps
make
ctest
make install

sudo apt-get install -y --allow-unauthenticated  gmt gmt-dcw gmt-gshhg 

git clone https://gitlab.gnome.org/GNOME/glib.git

sudo apt install ffmpeg xdg-open  dvc ninja pngquant



git clone --depth 50 https://github.com/GenericMappingTools/gmt

#curl -s https://api.github.com/repos/GenericMappingTools/gmt/releases/latest | grep "browser_download_url.*tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -c -qi - --show-progress
curl -s https://api.github.com/repos/GenericMappingTools/gshhg-gmt/releases/latest | grep "browser_download_url.*tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -c -qi - --show-progress
curl -s https://api.github.com/repos/GenericMappingTools/dcw-gmt/releases/latest | grep "browser_download_url.*tar.gz" | cut -d : -f 2,3 | tr -d \" | wget -c -qi - --show-progress

#https://github.com/GenericMappingTools/gshhg-gmt/releases/download/2.3.7/gshhg-gmt-2.3.7.tar.gz
#https://github.com/GenericMappingTools/dcw-gmt/releases/download/2.1.0/dcw-gmt-2.1.0.tar.gz
