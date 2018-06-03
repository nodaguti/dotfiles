#!/bin/sh

brew install go
brew install dep

export GOPATH="${HOME}/go"
export PATH="$PATH:$GOPATH/bin"