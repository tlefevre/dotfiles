#!/usr/bin/env bash


echo "Setting up Ubuntu..."

echo "Checking for SSH"
if [ ! -d $HOME/.ssh/ ]; then
    echo "SSH was not found - EXIT SCRIPT!"
    exit
fi

echo "Setting right permissions for SSH"
chmod -v 700 ~/.ssh
chmod -v 600 ~/.ssh/id_rsa


# Check for SDKMAN and install if not present
if [ ! $SDKMAN_VERSION ]; then
    curl -s "https://get.sdkman.io" | bash
fi

# Check for Bash-It and install if not present
if [ ! $BASH_IT ]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --silent
fi


# Install apt binaries
source setup_apt-get.bash

# Insatll non apt binaries
source setup_other_apps.bash

# Add custom keybindings
source setup_custom_keybindings.bash

# Enable stuff in bash-it
source setup_bash-it.bash
# Copy custom stuff to .bash_it
cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/
cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/


# Install sdkman stuff
source setup_sdkman.bash

##########################################################################################
## Backup:
# https://www.ostechnix.com/systemback-restore-ubuntu-desktop-and-server-to-previous-state/
##########################################################################################


#### DO THIS
# shutdown -r now
####