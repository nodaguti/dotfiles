#!/bin/sh

CURDIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

source "$CURDIR/../persist_sudo.sh"

#################################################
# Install packages/applications and set up them
#################################################

source "$CURDIR/brew.sh"
source "$CURDIR/packages.sh"
source "$CURDIR/node.sh"
source "$CURDIR/firefox.sh"
source "$CURDIR/zsh.sh"

brew cleanup
brew cask cleanup
sudo reboot
