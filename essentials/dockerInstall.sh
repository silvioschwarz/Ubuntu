#! /bin/sh

echo "INSTALL DOCKER"

echo "remove old"
sudo apt-get remove docker docker-engine docker.io containerd runc

echo "fetch dependencies"
sudo apt-get update


sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common

echo "add repository"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

#pub   4096R/0EBFCD88 2017-02-22
#      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
#uid                  Docker Release (CE deb) <docker@docker.com>
#sub   4096R/F273FCD8 2017-02-22

# wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.09.1~3-0~ubuntu-bionic_amd64.deb


sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic \
   stable"

echo "install DOcker"
sudo apt-get update

sudo apt-get install docker-ce

echo "check"
sudo docker run hello-world

echo "post install"
#post install

sudo groupadd docker
sudo usermod -aG docker $USER
docker run hello-world


#Uninstall
#sudo apt-get purge docker-ce

#sudo rm -rf /var/lib/docker
