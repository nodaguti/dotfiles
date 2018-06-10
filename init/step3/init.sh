#!/bin/sh

CURDIR="$(cd "$( dirname "$0" )" && pwd)"

#################################################
# Run tasks that require interaction
#################################################

source "$CURDIR/ssh-keygen.sh"
source "$CURDIR/github.sh"
source "$CURDIR/workspaces.sh"
