#! /bin/sh

echo "INSTALL DOCKER"

echo "remove old"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get purge docker-ce docker-ce-cli containerd.io

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd

echo "fetch dependencies"
sudo apt-get update


sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg2 \
    software-properties-common \
    lsb-release

echo "add repository"
#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#sudo apt-key fingerprint 0EBFCD88
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

#pub   4096R/0EBFCD88 2017-02-22
#      Key fingerprint = 9DC8 5822 9FC7 DD38 854A  E2D8 8D81 803C 0EBF CD88
#uid                  Docker Release (CE deb) <docker@docker.com>
#sub   4096R/F273FCD8 2017-02-22

# wget https://download.docker.com/linux/ubuntu/dists/bionic/pool/stable/amd64/docker-ce_18.09.1~3-0~ubuntu-bionic_amd64.deb


#sudo add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   $(lsb_release -cs) \
#   stable"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
echo "install DOcker"
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io

echo "check"
sudo docker run hello-world

echo "post install"
#post install

sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

docker run hello-world

#sudo chown "$USER":"$USER" /home/"$USER"/.docker -R
#sudo chmod g+rwx "$HOME/.docker" -R

#convenience script
#curl -fsSL https://get.docker.com -o get-docker.sh
#DRY_RUN=1 sh ./get-docker.sh

#case $COUNTRY in
#
#  Lithuania)
#    echo -n "Lithuanian"
#    ;;
#
#  Romania | Moldova)
#    echo -n "Romanian"
#    ;;
#
#  Italy | "San Marino" | Switzerland | "Vatican City")
#    echo -n "Italian"
#    ;;
#
#  *)
#    echo -n "unknown"
#    ;;
#esac

#echo $0
#docker compose
# sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose


#Uninstall
#sudo apt-get purge docker-ce

#sudo rm -rf /var/lib/docker
