#!/bin/sh

CURDIR="$(cd "$( dirname "$0" )" && pwd)"

# source "$CURDIR/xcode.sh"
# source "$CURDIR/homebrew.sh"
source "$CURDIR/zsh.sh"
source "$CURDIR/fonts.sh"
source "$CURDIR/configs.sh"

sudo reboot
