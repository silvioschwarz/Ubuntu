#! /bin/sh

sudo apt install curl
#https://github.com/shiftkey/desktop/releases/download/release-1.6.0-linux1/GitHubDesktop-linux-1.6.0-linux1.deb
#https://github.com/shiftkey/desktop/releases/download/release-1.6.0-linux1/GitHubDesktop-linux-1.6.0-linux1.snap
#wget -c -O githubDesktop.deb https://github.com/shiftkey/desktop/releases/download/release-1.0.12-linux1/GitHubDesktop-linux-amd64-1.0.12-linux1.deb

#wget -c -O githubDesktop.deb  https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb


#sudo chmod +x githubDesktop.deb

#sudo dpkg -i githubDesktop.deb

#sudo rm githubDesktop.deb

#wget -qO - https://packagecloud.io/shiftkey/desktop/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null
#sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/shiftkey/desktop/any/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'
#sudo apt update
#
#sudo apt install github-desktop


curl -s https://api.github.com/repos/shiftkey/desktop/releases/latest | grep "browser_download_url.*deb" | cut -d : -f 2,3 | tr -d \" | wget -c -O githubDesktop.deb -qi - --show-progress

sudo dpkg -i githubDesktop.deb

sudo rm githubDesktop.deb
