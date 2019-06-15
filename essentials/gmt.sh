#!/bin/sh

echo "INSTALLING GMT"

sudo apt-get install -y --allow-unauthenticated subversion build-essential cmake libcurl4-gnutls-dev libgdal-dev libfftw3-dev libpcre3-dev libnetcdf-dev liblapack-dev libblas-dev graphicsmagick texlive texlive-latex-extra python-sphinx

sudo apt-get install -y --allow-unauthenticated  gmt gmt-dcw gmt-gshhg 

