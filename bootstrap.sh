#!/bin/sh

echo "Setting up viekobook..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

brew cleanup

ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Switch to using brew-installed bash as default shell
if ! fgrep -q '/usr/local/bin/bash' /etc/shells; then
  echo '/usr/local/bin/bash' | sudo tee -a /etc/shells;
  chsh -s /usr/local/bin/bash;
fi;

# Create directories
mkdir -p $HOME/Development
mkdir -p $HOME/Repositories
mkdir -p $HOME/Websites

# Setup Links
bash install

# Set OS X preferences
source .macos
