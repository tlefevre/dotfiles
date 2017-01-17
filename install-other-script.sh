#!/bin/bash

echo "Installing non-apt software..."

# Lastpass
echo "Installing Lastpass..."
wget https://lastpass.com/lplinux.tar.bz2
tar xjvf lplinux.tar.bz2
cd lplinux && ./install_lastpass.sh


# GitKraken
echo "Installing GitKraken..."
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb


# Slack
echo "Installing Slack..."
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-2.3.4-amd64.deb
sudo dpkg -i slack-desktop-2.3.4-amd64.deb



echo "Done installing!"
