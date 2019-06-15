THIS_FILE := $(lastword $(MAKEFILE_LIST))

default:
	@echo $@  # print target name
	@$(MAKE) -f $(THIS_FILE) conda


conda:
	wget -c https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh | bash
custom:
	./essentials/customization.sh
dlc:
	./essentials/DLC.sh
electron:
	wget -c -O electronFiddle.deb https://github.com/electron/fiddle/releases/download/v0.5.1/electron-fiddle_0.5.1_amd64.deb
	sudo dpkg-i electronFiddle.deb
elementary:
	./essentials/elementary.sh
github:
	sudo apt-get install -y git git-core git-gui git-doc
	git config --global user.name "Silvio Schwarz"
	git config --global user.email vio.schwarz89@gmail.com
	./GithubDesktopInstall.sh
gmt:
	./essentials/gmt.sh
gnome:
	./essentials/gnomeInstall.sh
instaseis:
#	onda install -c conda-forge obspy h5py future requests tornado flake8 pytest mock basemap pyqt pip jsonschema responses pyqtgraph pytest-xdist
	conda install -c conda-forge instaseis
jekyll:
	./essentials/jekyllInstall.sh
node:
	curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash
	nvm install node
	#./NodeNPMInstall.sh
nteract:
	./essentials/nteract.sh
obspy:
	./essentials/obspy.sh
printer:
	./essentials/printer.sh
python:
	./essentials/pythonInstall.sh
qgis:
	./essentials/qgis.sh
r:
	./essentials/RRStudioInstall.sh
spotify:
	sudo snap install spotify
tux:
	sudo apt -y install curl && bash <(curl -Ls https://github.com/Tux4Ubuntu/tux-install/raw/master/install.sh)
vscode:
	@echo $@
	wget -c -O vscode.deb.deb https://go.microsoft.com/fwlink/?LinkID=760868
	sudo dpkg-i vscode.deb
	sudo rm -rf *.deb
	./essentials/vscodePlugins.sh


.PHONY: update

update:
	./updates/update.sh
	./updates/managerUpdate.sh

.PHONY: clean
clean:
	sudo apt autoremove

all:
	@echo $@  # print target name
	@$(MAKE) -f $(THIS_FILE) conda custom vscode tux spotify r qgis python printer obspy node jekyll instaseis gnome gmt github dlc electron
