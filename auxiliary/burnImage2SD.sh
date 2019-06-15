#!/bin/sh

HOME=/home/silvio
LINES=25
COLUMNS=60

SD=$(df -h | grep -oh "/dev/mmcblk." | head -1)

umount $SD


IMAGE=$(dialog --stdout --title "Please choose a file" --fselect $HOME/ $(expr $LINES - 15) $(expr $COLUMNS - 10))

sudo dd bs=4M if=$IMAGE of=$SD status=progress

sync
