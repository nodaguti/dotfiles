#!/bin/sh

PROFILE_DIR="$1"

if [ -z "$PROFILE_DIR" ]; then
  read -p "Firefox's Profile Dir? " PROFILE_DIR
fi

ln -s "${HOME}/workspaces/dotfiles/firefox/user.js" "${PROFILE_DIR}/user.js"
ln -s "${HOME}/workspaces/dotfiles/firefox/chrome" "${PROFILE_DIR}/chrome"
