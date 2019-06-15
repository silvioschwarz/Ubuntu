#! /bin/sh

echo "AutoEnable=true" > /etc/bluetooth/main.conf

sudo /etc/init.d/bluetooth restart

