#!/bin/sh

CURDIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

source "$HOME/workspaces/dotfiles/zsh/homebrew.sh"
source "$CURDIR/../persist_sudo.sh"

#################################################
# Set up the foundation
#################################################

source "$CURDIR/configs.sh"

sudo reboot
