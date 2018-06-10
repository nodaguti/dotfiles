#!/bin/sh

CURDIR="$(cd "$( dirname "$0" )" && pwd)"

brew bundle --file="${CURDIR}/Brewfile"
