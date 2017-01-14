#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade

#Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

#Java
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java7-installer
sudo apt-get install -y oracle-java8-installer

#Ubuntu make
sudo apt-get install -y ubuntu-make
#sudo umake ide idea-ultimate

sudo add-apt-repository ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install -y fasd

sudo add-apt-repository -y ppa:diodon-team/stable
sudo apt-get update
sudo apt-get install -y diodon

sudo apt install nautilus-dropbox



#MySQL
sudo apt-get install mysql-server
sudo mysql_secure_installation
