#! /bin/sh

sudo apt install sysstat

#sudo nano /etc/default/sysstat
#sed -i 's/false/true/g' /etc/default/sysstat
sudo sed -i 's/ENABLED="false"/ENABLED="true"/g' /etc/default/sysstat

sudo service sysstat restart
