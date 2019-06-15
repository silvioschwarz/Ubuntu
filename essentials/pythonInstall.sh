#!/bin/sh

curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py

python3 get-pip.py

sudo apt-get install -y python-numpy python-scipy python-matplotlib ipython python-pandas python-sympy python-nose python-pip python-dev
sudo apt-get install -y libssl-dev openssl python-dev librsync-dev libcairo2-dev libjpeg-dev libgif-dev libcurl4-openssl-dev libgirepository1.0-dev

#distutilz
#sudo apt-get purge --auto-remove python-psutil python-cvxopt python-simplejson


#PIP
echo -n "INSTALLING PIP PACKAGES"
echo
python3 -m pip install jupyter scikit-learn --user
python3 -m pip install --upgrade pip --user

python3 -m pip install plotly_express --user

python3 -m pip install jupyter_contrib_nbextensions --user
python3 -m pip install ipywidgets --user

jupyter contrib nbextension install
jupyter nbextension enable --py widgetsnbextension
#sudo apt-get install spyder3


#conda install numpy scipy matplotlib ipython pandas sympy nose jupyter spyder scikit-learn
#sudo apt-get install python3-bs4
