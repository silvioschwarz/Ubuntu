#! /bin/sh

wget -c -O uld.tar.gz https://ftp.hp.com/pub/softlib/software13/printers/SS/SL-M4580FX/uld_V1.00.39_01.17.tar.gz
#http://downloadcenter.samsung.com/content/DR/201512/20151210091120064/uld_v1.00.37_00.99.tar.gz 
#http://www.samsungsetup.com/TS/Files/RDS_XML/web_install_agent/linux/SamsungPrinterInstaller.tar.gz

#1. I installed the scan driver from the HP website 
uld_V1.00.39_01.17.tar.gz > install-scanner.sh

tar -xzvf uld.tar.gz

yes y | sudo uld/install.sh

sudo rm -r uld.tar.gz uld


sudo apt install libusb-0.1-4
sudo scanimage -L 
#2. The libs installed by the step 1. are in the wrong place, to work do:
sudo ln -s /opt/smfp-common/scanner/lib/libsane-smfp.so.1.0.1 /usr/lib/x86_64-linux-gnu/sane/libsane-smfp.so.1.0.1
sudo ln -s /usr/lib/x86_64-linux-gnu/sane/libsane-smfp.so.1.0.1 /usr/lib/x86_64-linux-gnu/sane/libsane-smfp.so.1
sudo ln -s /usr/lib/x86_64-linux-gnu/sane/libsane-smfp.so.1 /usr/lib/x86_64-linux-gnu/sane/libsane-smfp.so

