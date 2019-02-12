#!/bin/sh

CURDIR="$( cd "$( dirname "$0" )" >/dev/null 2>&1 && pwd )"

brew bundle --file="${CURDIR}/Brewfile"
