#!/bin/sh

echo "INSTALLING OBSPY"

#To install this package with conda run:
conda install --channel https://conda.anaconda.org/obspy obspy
#To install this package with pypi run:
#pip install -i https://pypi.anaconda.org/obspy/simple obspy

#conda -c conda-forge
#conda install obspy -c conda-forge

#echo "INSTALLING INSTASEIS"

#sudo apt-get update -y
#sudo apt-get install -y python-qt4 libxml2-dev libxslt1-dev python-dev python-lxml xvfb gfortran

#sudo pip install h5py future requests tornado flake8 pytest mock basemap pyqt4 pyqt5 jsonschema responses pyqtgraph pytest-xdist
#sudo pip install instaseis

#python -m instaseis.tests
