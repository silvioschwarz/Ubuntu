#! /bin/sh

sudo apt update && sudo apt upgrade
sudo apt install dcmtk


for f in ~/Bilder/DICOM/ST000000/*;
  do 
     [ -d $f ] && cd "$f" && echo Entering into $f and converting to png
	for x in *; do 
	dcmj2pnm +on $x "${x}".png; 
	done;
    convert -delay 10 -loop 0 *.png animation.gif
  done;


#find ./apps -type d -exec echo Entering into {} and installing packages \; 

