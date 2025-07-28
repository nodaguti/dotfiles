#!/bin/sh

CURDIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

source "$HOME/workspaces/dotfiles/zsh/homebrew.sh"
source "$CURDIR/../persist_sudo.sh"

#################################################
# Install packages/applications and set up them
#################################################

source "$CURDIR/brew.sh"
source "$CURDIR/mise.sh"
source "$CURDIR/firefox.sh"
source "$CURDIR/zsh.sh"
source "$CURDIR/quarantine.sh"

brew cleanup
sudo reboot
