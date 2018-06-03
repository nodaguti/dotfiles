#!/bin/sh

PROFILE_DIR="$1"

ln -s "${HOME}/workspaces/dotfiles/firefox/user.js" "${PROFILE_DIR}/user.js"
ln -s "${HOME}/workspaces/dotfiles/firefox/chrome" "${PROFILE_DIR}/chrome"
