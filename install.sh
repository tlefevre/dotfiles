#!/bin/bash

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



# Insall apt binaries
source ./apt-get-script.sh

# Insall non apt binaries
source ./install-other-script.sh

# Add custom keybindings
source ./custom_keybindings.sh

# Enable stuff in bash-it
source ./bash-it.sh
# Copy custom stuff to .bash_it
cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/
cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/



##########################################################################################
## Backup:
# https://www.ostechnix.com/systemback-restore-ubuntu-desktop-and-server-to-previous-state/


##########################################################################################


####
# shutdown -r now
####