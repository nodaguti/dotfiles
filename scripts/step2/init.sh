#!/bin/sh

CURDIR="$(cd "$( dirname "$0" )" && pwd)"

source "$CURDIR/packages.sh"
source "$CURDIR/applications.sh"
source "$CURDIR/node.sh"
source "$CURDIR/go.sh"
source "$CURDIR/workspaces.sh"

brew cleanup
brew cask cleanup
sudo reboot