#! /bin/sh

cat <<EOF > /etc/systemd/system/wififix.service
#!/bin/bash
echo [Unit]
echo Description=Fix Wifi after resume by restarting networking
echo After=suspend.target

echo [Service]
echo Type=oneshot
echo ExecStart=/usr/bin/nmcli networking off ; /usr/bin/nmcli networking on

echo [Install]
echo WantedBy=suspend.target
EOF 

sudo systemctl enable wififix.service
sudo systemctl status wififix.service
 
