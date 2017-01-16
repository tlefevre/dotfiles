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


# Paper theme
echo "Installing Paper theme: https://snwh.org/paper"
wget -O paper-icon-theme.deb "https://snwh.org/paper/download.php?owner=snwh&ppa=pulp&pkg=paper-icon-theme,16.04"
wget -O paper-gtk-theme.deb "https://snwh.org/paper/download.php?owner=snwh&ppa=pulp&pkg=paper-gtk-theme,16.04"
sudo dpkg -i paper*.deb
sudo apt-get install -f

sudo add-apt-repository -y ppa:snwh/pulp
sudo apt-get update
#sudo apt-get install paper-icon-theme
#sudo apt-get install paper-gtk-theme
sudo apt-get install -y paper-cursor-theme




echo "Done installing!"
