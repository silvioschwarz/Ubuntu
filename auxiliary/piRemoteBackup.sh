#! /bin/sh

ssh pi@silvioschwarz.ddns.net "sudo dd if=/dev/mmcblk0 bs=1M status=progress | gzip -" | dd of=~/Desktop/pibackup.gz
