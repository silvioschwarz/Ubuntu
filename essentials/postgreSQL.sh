#! /bin/sh

# Create the file repository configuration:
sudo sh -c 'echo "[deb arch=$(dpkg --print-architecture)] http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'

# Import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# Update the package lists:
sudo apt-get update

# Install the latest version of PostgreSQL.
# If you want a specific version, use 'postgresql-12' or similar instead of 'postgresql':
sudo apt-get -y install postgresql

sudo systemctl is-active postgresql
sudo systemctl is-enabled postgresql
sudo systemctl status postgresql
sudo pg_isready

#sudo su - postgres
#psql
#
#CREATE USER tecmint WITH PASSWORD 'securep@wd';
#CREATE DATABASE tecmintdb;
#GRANT ALL PRIVILEGES ON DATABASE tecmintdb to tecmint;
#\q

#install pgadmin
curl https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/focal pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list' 

sudo apt update
sudo apt install pgadmin4


sudo /usr/pgadmin4/bin/setup-web.sh 
