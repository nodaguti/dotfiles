#!/bin/sh

CURDIR=$(dirname $(readlink -f $0))

source "$CURDIR/../persist_sudo.sh"

#################################################
# Run tasks that require interaction
#################################################

source "$CURDIR/ssh-keygen.sh"
source "$CURDIR/github.sh"
source "$CURDIR/workspaces.sh"
