#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
echo "Updating homebrew"
brew update

# Upgrade any already-installed formulae.
echo "Upgrading all homebrew formulae"
brew upgrade --all

# Install all our dependencies with bundle (See Brewfile)
echo "Installing bundled formulae..."
brew tap homebrew/bundle
brew bundle

# Remove outdated versions from the cellar.
brew cleanup

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


# Set OS X preferences
# We will run this last because this will reload the shell
source ../.osx
