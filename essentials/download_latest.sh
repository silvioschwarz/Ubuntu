#! /bin/sh
USER=
REPO=
FILE="browser_download_url.*deb"
OUTPUT=

curl -s https://api.github.com/repos/$USER/$REPO/releases/latest | grep $FILE | cut -d : -f 2,3 | tr -d \" | wget -c -O $OUTPUT -qi - --show-progress
