#!/bin/sh

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



# Insall binaries
source ./apt-get-script.sh

# Add custom keybindings
source ./custom_keybindings.sh

# Enable stuff in bash-it
source ./bash-it.sh
# Copy custom stuff to .bash_it
cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/
cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/


# Lastpass
echo "Installing Lastpass..."
wget https://lastpass.com/lplinux.tar.bz2
tar xjvf lplinux.tar.bz2
cd lplinux && ./install_lastpass.sh

# Paper theme
echo "##########################################################################################"
echo "Download Paper theme: https://snwh.org/paper/download"
echo "Run the following:"
echo "sudo dpkg -i paper*.deb"
echo "sudo apt-get install -f"
echo "##########################################################################################"

#https://snwh.org/paper/download
#sudo dpkg -i paper*.deb
#sudo apt-get install -f


####
# shutdown -r now
####