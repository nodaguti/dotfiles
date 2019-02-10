#!/bin/sh

CURDIR=$(dirname $(readlink -f $0))

#################################################
# Install packages/applications and set up them
#################################################

source "$CURDIR/brew.sh"
source "$CURDIR/packages.sh"
source "$CURDIR/node.sh"
source "$CURDIR/firefox.sh"

brew cleanup
brew cask cleanup
sudo reboot
