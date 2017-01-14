#!/bin/sh

echo "Setting up Ubuntu..."


# Check for SDKMAN and install if not present
if [[ ! $SDKMAN_VERSION ]]; then
    curl -s "https://get.sdkman.io" | bash
fi

# Check for Bash-It and install if not present
if [[ ! $BASH_IT ]]; then
    git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
    ~/.bash_it/install.sh --silent
fi

# Copy custom stuff to .bash_it
cp -v ~/.dotfiles/bash-it-custom/aliases/custom.aliases.bash ~/.bash_it/aliases/
cp -v ~/.dotfiles/bash-it-custom/lib/custom.bash ~/.bash_it/lib/


source ./apt-get-script.sh


# Enable stuff in bash-it
