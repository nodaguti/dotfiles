#!/bin/sh

CURDIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

source "$CURDIR/../persist_sudo.sh"

#################################################
# Run tasks that require interaction
#################################################

source "$CURDIR/ssh-keygen.sh"
source "$CURDIR/github.sh"
source "$CURDIR/workspaces.sh"
