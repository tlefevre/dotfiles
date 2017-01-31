#!/usr/bin/env bash

echo "Installing software"

echo "Updating and upgrading apt-get"
sudo apt-get -y update
sudo apt-get -y upgrade

echo "Installing..."
# Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

# Java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java7-installer
sudo apt-get install -y oracle-java8-installer

sudo add-apt-repository -y ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install -y fasd

sudo add-apt-repository -y ppa:diodon-team/stable
sudo apt-get update
sudo apt-get install -y diodon

sudo apt install -y nautilus-dropbox

sudo add-apt-repository -y universe
sudo apt-get update
sudo apt-get install -y libgconf2-4 libnss3-1d libxss1
sudo apt-get install -y unity-tweak-tool

sudo add-apt-repository -y ppa:snwh/pulp
sudo apt-get update
sudo apt-get install paper-icon-theme
sudo apt-get install paper-gtk-theme
sudo apt-get install paper-cursor-theme


sudo apt-get install -y wkhtmltopdf

sudo apt install -y docker.io


# Because: http://askubuntu.com/questions/856659/backup-does-not-work-on-ubuntu-16-10-and-16-04
sudo apt-get install -y duplicity

# Preview (http://www.omgubuntu.co.uk/2016/09/gnome-sushi-mac-quick-look-nautilus)
sudo apt-get install -y gnome-sushi

# Ubuntu make
sudo apt-get install -y ubuntu-make
sudo umake ide idea-ultimate

# MySQL
if [ -f ! /etc/init.d/mysql* ]; then
    sudo apt-get install -y mysql-server
    # only run init script first time
    sudo mysql_secure_installation
fi

# VirtualBox
sudo apt install -y virtualbox-qt virtualbox-ext-pack
# Vagrant
sudo apt install vagrant



echo "Done installing!"
