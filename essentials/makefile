THIS_FILE := $(lastword $(MAKEFILE_LIST))

default:
	@echo $@  # print target name
	@$(MAKE) -f $(THIS_FILE) conda

help:
	@echo '    init'
	@echo '        install pipenv and all project dependencies'
	@echo '    test'
	@echo '        run all tests'

init:
	@echo 'Install python dependencies'
	pip install pipenv
	pipenv install

test:
	@echo 'Run all tests'
	pipenv run py.test tests

python2:
	@echo $@  # print target name
	sudo apt-get install -y make git python-dev python-setuptools
	sudo apt-get install -y python-numpy python-numpy-dev python-scipy python-matplotlib
	sudo apt-get install -y python-pyqt5 python-pyqt5.qtopengl python-pyqt5.qtsvg
	sudo apt-get install -y python-pyqt5.qtwebengine || sudo apt-get install -y python-pyqt5.qtwebkit
	sudo apt-get install -y python-yaml python-progressbar python-jinja2
	sudo apt-get install -y python-requests
	sudo apt-get install -y python-future || sudo easy_install future
	cd ~/src/   # or wherever you keep your source packages
	git clone https://github.com/pyrocko/pyrocko.git pyrocko
	cd pyrocko
	sudo python setup.py install

python3:
	@echo $@  # print target name
	sudo apt-get install -y make git python3-dev python3-setuptools
	sudo apt-get install -y python3-numpy python3-numpy-dev python3-scipy python3-matplotlib
	sudo apt-get install -y python3-pyqt4 python3-pyqt4.qtopengl
	sudo apt-get install -y python3-pyqt5 python3-pyqt5.qtopengl python3-pyqt5.qtsvg
	sudo apt-get install -y python3-pyqt5.qtwebengine || sudo apt-get install -y python3-pyqt5.qtwebkit
	sudo apt-get install -y python3-yaml python3-progressbar python3-jinja2
	sudo apt-get install -y python3-requests
	sudo apt-get install -y python3-future || sudo easy_install3 future
	git clone https://github.com/pyrocko/pyrocko.git pyrocko
	sudo mv pyrocko /usr/local/lib
	cd /usr/local/lib/pyrocko
	sudo python3 setup.py install

conda:
	@echo $@  # print target name
	conda install -c pyrocko pyrocko
	pip install git+https://github.com/pyrocko/pyrocko.git

compile:
	@echo $@  # print target name
	conda install pyqt=5
	conda install progressbar
	cd `conda info --root`
	mkdir src
	cd src
	git clone https://github.com/pyrocko/pyrocko.git
	cd pyrocko
	python setup.py install

kite: 
	@echo $@  # print target name
	sudo apt-get install python-pyside python-pyside.qtcore python-pyside.qtopengl python-yaml python-scipy python-numpy
	git clone https://github.com/pyqtgraph/pyqtgraph.git
	cd pyqtgraph 
	sudo python setup.py install
	git clone https://github.com/pyrocko/kite.git
	cd kite 
	sudo python setup.py install

beat:
	@echo $@  # print target name
	sudo apt-get install libopenmpi-dev
	sudo pip3 install mpi4py
	git clone https://github.com/hvasbath/beat
	sudo mv beat /usr/local/lib/
	cd /usr/local/lib/beat
	sudo python3 setup.py install (--user)
grond:
	@echo $@  # print target name
	git clone https://github.com/pyrocko/grond.git
	cd grond
	sudo python3 setup.py install
	conda install -c pyrocko pyrocko
	pip install git@https://github.com/pyrocko/grond.git
	
