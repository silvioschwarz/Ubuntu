#! /bin/sh

phantomjs runner.js | ffmpeg -y -c:v png -f image2pipe -r 25 -t 10  -i - -c:v libx264 -pix_fmt yuv420p -movflags +faststart dragon.mp4
