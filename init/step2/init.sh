#!/bin/sh

CURDIR="$(cd "$( dirname "$0" )" && pwd)"

source "$CURDIR/brew.sh"
source "$CURDIR/packages.sh"
source "$CURDIR/node.sh"
source "$CURDIR/firefox.sh"

brew cleanup
brew cask cleanup
sudo reboot
