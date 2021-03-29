#!/bin/bash
echo "This script will download, install and deploy testapp"

echo "Update apt repo"
sudo apt update

echo "Install git"
sudo apt install git -y

echo "CD to /home/yc-user"
cd /home/yc-user

echo "Clone app from git repo"
git clone -b monolith https://github.com/express42/reddit.git

echo "CD to app folder and install bundle"
cd reddit && bundle install

echo "Start the app"
puma -d 
