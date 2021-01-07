#!/bin/sh

CURDIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

source "$CURDIR/../persist_sudo.sh"

#################################################
# Set up the foundation
#################################################

source "$CURDIR/fonts.sh"
source "$CURDIR/configs.sh"

sudo reboot
