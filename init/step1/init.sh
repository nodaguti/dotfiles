#!/bin/sh

CURDIR=$(dirname $(readlink -f $0))

#################################################
# Set up the foundation
#################################################

# source "$CURDIR/xcode.sh"
# source "$CURDIR/homebrew.sh"
source "$CURDIR/zsh.sh"
source "$CURDIR/fonts.sh"
source "$CURDIR/configs.sh"

sudo reboot
