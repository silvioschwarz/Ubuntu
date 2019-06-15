#! /bin/sh
#https://github.com/shiftkey/desktop/releases/download/release-1.6.0-linux1/GitHubDesktop-linux-1.6.0-linux1.deb
#https://github.com/shiftkey/desktop/releases/download/release-1.6.0-linux1/GitHubDesktop-linux-1.6.0-linux1.snap
wget -c -O githubDesktop.deb https://github.com/shiftkey/desktop/releases/download/release-1.0.12-linux1/GitHubDesktop-linux-amd64-1.0.12-linux1.deb

sudo chmod +x githubDesktop.deb

sudo dpkg -i githubDesktop.deb

sudo rm githubDesktop.deb
