#! /bin/sh

phantomjs render.js | ffmpeg -y -c:v png -f image2pipe -r 25 -t 2  -i - -an -c:v libx264 -pix_fmt yuv420p -movflags +faststart movie.mp4
