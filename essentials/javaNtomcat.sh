#! /bin/sh

sudo apt install openjdk-17-jre
java --version

sudo apt-cache search tomcat
sudo apt install tomcat9 tomcat9-admin

#opening ports
#sudo ufw allow from any to any port 8080 proto tcp

#setup user
sudo nano /etc/tomcat9/tomcat-users.xml

#<role rolename="admin-gui"/>
#<role rolename="manager-gui"/>
#<user username="tomcat" password="pass" roles="admin-gui,manager-gui"/>
sudo systemctl enable tomcat9
sudo systemctl restart tomcat9

#check ports
ss -ltn
