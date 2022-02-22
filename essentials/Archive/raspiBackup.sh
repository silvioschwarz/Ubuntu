#! /bin/sh

ssh user@192.168.xxx.xx 'dd if=/dev/mmcblk0 bs=10M' | cat > sd_image.img

