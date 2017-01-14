#!/usr/bin/env bash

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

sudo apt-get install mysql-server
sudo mysql_secure_installation
