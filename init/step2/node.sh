#!/bin/sh

# Initialise the version manager
nodenv init

# Install the latest version of Node
LATEST_NODE=`nodenv install -l | tr -d ' ' | grep -E '^[0-9.]+$' | sort -t. -k 1 -r -n | head -n 1`
nodenv install $LATEST_NODE

# Install nodenv's plugins
git clone https://github.com/nodenv/nodenv-package-rehash.git "$(nodenv root)"/plugins/nodenv-package-rehash
