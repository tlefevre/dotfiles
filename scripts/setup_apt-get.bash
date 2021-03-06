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
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections
sudo apt-get install -y oracle-java7-installer
sudo apt-get install -y oracle-java8-installer

sudo add-apt-repository -y ppa:aacebedo/fasd
sudo apt-get update
sudo apt-get install -y fasd

sudo add-apt-repository -y ppa:diodon-team/stable
sudo apt-get update
sudo apt-get install -y diodon

sudo add-apt-repository -y universe
sudo apt-get update
sudo apt-get install -y libgconf2-4 libnss3-1d libxss1
sudo apt-get install -y unity-tweak-tool

sudo add-apt-repository -y ppa:snwh/pulp
sudo apt-get update
sudo apt-get install -y paper-icon-theme
sudo apt-get install -y paper-gtk-theme
sudo apt-get install -y paper-cursor-theme


sudo apt-get install -y wkhtmltopdf

# Vim / Less stuff
sudo apt-get install -y vim
sudo apt-get install -y source-highlight

# Docker
sudo apt-get install -y --no-install-recommends \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://apt.dockerproject.org/gpg | sudo apt-key add -

sudo add-apt-repository \
       "deb https://apt.dockerproject.org/repo/ \
       ubuntu-$(lsb_release -cs) \
       main"

sudo apt-get update
sudo apt-get -y install docker-engine

sudo apt-get install -y bleachbit

# Because: http://askubuntu.com/questions/856659/backup-does-not-work-on-ubuntu-16-10-and-16-04
sudo apt-get install -y duplicity

# Preview (http://www.omgubuntu.co.uk/2016/09/gnome-sushi-mac-quick-look-nautilus)
sudo apt-get install -y gnome-sushi

### Development stuff ###
sudo apt-get install -y ubuntu-make
sudo umake ide idea-ultimate
sudo umake ide datagrip

# NodeJS
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
sudo apt-get install -y nodejs

# Yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn

# 1. Add the Spotify repository signing key to be able to verify downloaded packages
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
# 2. Add the Spotify repository
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
# 3. Update list of available packages
sudo apt-get update
# 4. Install Spotify
sudo apt-get install -y spotify-client

# VirtualBox
sudo apt install -y virtualbox-qt virtualbox-ext-pack
# Vagrant
sudo apt install -y vagrant

# Database
sudo apt install -y postgresql-client-common
sudo apt install -y postgresql-client-9.5

sudo apt install -y tlp tlp-rdw
sudo tlp start



echo "Done installing!"
