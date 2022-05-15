#! /bin/sh

wget https://downloads.sourceforge.net/project/geoserver/GeoServer/2.20.4/geoserver-2.20.4-war.zip
#https://downloads.sourceforge.net/project/geoserver/GeoServer/2.20.4/geoserver-2.20.4-bin.zip

#https://github.com/geoserver/geoserver/archive/refs/tags/2.21-RC.tar.gz
#https://github.com/geoserver/geoserver/archive/refs/tags/2.20.4.tar.gz


sudo mv geoserver-2.20.4-war.zip /var/lib/tomcat9/webapps

cd /var/lib/tomcat9/webapps
sudo unzip geoserver-2.20.4-war.zip
