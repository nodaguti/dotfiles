#!/bin/sh

CURDIR=$(dirname $(readlink -f $0))

#################################################
# Run tasks that require interaction
#################################################

source "$CURDIR/ssh-keygen.sh"
source "$CURDIR/github.sh"
source "$CURDIR/workspaces.sh"
