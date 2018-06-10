#!/bin/sh

CURDIR="$(cd "$( dirname "$0" )" && pwd)"

source "$CURDIR/brew.sh"
source "$CURDIR/packages.sh"
source "$CURDIR/node.sh"

brew cleanup
brew cask cleanup
sudo reboot