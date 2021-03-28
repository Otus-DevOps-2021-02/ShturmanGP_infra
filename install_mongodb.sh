#!/bin/bash

echo "This script will install MongoDB Service"

echo "Download apt and apply key"
wget -qO - https://www.mongodb.org/static/pgp/server-4.2.asc | sudo apt-key add -

echo "Add MongoDB repo into sources list"
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.2.list

echo "Update apt repo"
sudo apt update

echo "Install MongoDB Service"
sudo apt-get install -y mongodb-org

echo "Enable MongoDB Service"
sudo systemctl enable mongod

echo "Start MongoDB Service"
sudo systemctl start mongod