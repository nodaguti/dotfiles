#!/bin/sh

# Install version manager
brew install nodenv
nodenv init

# Install the latest version of Node
LATEST_NODE=`nodenv install -l | tr -d ' ' | grep -E '^[0-9.]+$' | sort -t. -k 1 -r -n | head -n 1`
nodenv install $LATEST_NODE

# Install nodenv's plugins
brew install nodenv/nodenv/nodenv-npm-migrate
git clone https://github.com/nodenv/nodenv-package-rehash.git "$(nodenv root)"/plugins/nodenv-package-rehash

# Install yarn
brew install yarn --without-node
