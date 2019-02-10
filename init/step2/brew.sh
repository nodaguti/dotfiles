#!/bin/sh

CURDIR=$(dirname $(readlink -f $0))

brew bundle --file="${CURDIR}/Brewfile"
