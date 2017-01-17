#!/usr/bin/env bash

echo "Setting up Ubuntu..."


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



##########################################################################################
## Backup:
# https://www.ostechnix.com/systemback-restore-ubuntu-desktop-and-server-to-previous-state/
##########################################################################################


#### DO THIS
# shutdown -r now
####