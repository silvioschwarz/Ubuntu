#! /bin/sh

sudo apt-get install nfs-common cifs-utils libnss-myhostname

echo "Installing Synology"
wget -c -O synology.deb https://global.download.synology.com/download/Tools/Assistant/6.1-15163/Ubuntu/x86_64/synology-assistant_6.1-15163_amd64.deb
sudo dpkg -i synology.deb
rm synology.deb

wget -c -O synologyCS.deb https://global.download.synology.com/download/Tools/CloudStationBackup/4.2.6-4408/Ubuntu/Installer/x86_64/synology-cloud-station-backup-4408.x86_64.deb
sudo dpkg -i synologyCS.deb
rm synologyCS.deb
