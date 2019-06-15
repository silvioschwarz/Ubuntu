#!/bin/sh

SD=$(df -h | grep -oh "/dev/mmcblk." | head -1)

umount $SD


#IMAGE=$(dialog --stdout --title "Please choose a file" --fselect $HOME/ $(expr $LINES - 15) $(expr $COLUMNS - 10))


wget -c -O raspi.zip --trust-server-names https://downloads.raspberrypi.org/raspbian_lite_latest


unzip -p raspi.zip | sudo dd bs=4M of=$SD status=progress

sync
