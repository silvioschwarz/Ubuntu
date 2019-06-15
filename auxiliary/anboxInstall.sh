#! /bin/sh

#install:
echo "add PPA"
sudo add-apt-repository ppa:morphis/anbox-support
sudo apt update
sudo apt install linux-headers-generic anbox-modules-dkms

echo "Load modules"
sudo modprobe ashmem_linux
sudo modprobe binder_linux

ls -1 /dev/{ashmem,binder}

echo "
/dev/ashmem
/dev/binder 
"

echo "install anbox"
sudo snap install --devmode --beta anbox

#update:
	snap refresh --beta --devmode anbox

#uninstall:
	snap remove anbox
	sudo apt install ppa-purge
	sudo ppa-purge ppa:morphis/anbox-support

#install psckage:
sudo apt-get install android-tools-adb 
sudo apt-get install adb 

adb install path/to/my-app.ap


