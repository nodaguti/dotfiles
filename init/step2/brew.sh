#!/bin/sh

brew bundle --file="${HOME}/workspaces/dotfiles/Brewfile"
sudo brew services start dnscrypt-proxy
