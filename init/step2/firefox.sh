#!/bin/sh

FIREFOX=/Applications/Firefox.app/Contents/MacOS/firefox

# Create a profile
PROFILE_DIR=`$FIREFOX -CreateProfile miku 2>&1 | cut -d"'" -f4 | sed 's/\/prefs.js//g'`
echo "Profile Dir: ${PROFILE_DIR}"

# Copy setting files
ln -s "${HOME}/workspaces/dotfiles/firefox/user.js" "${PROFILE_DIR}/user.js"
ln -s "${HOME}/workspaces/dotfiles/firefox/chrome" "${PROFILE_DIR}/chrome"
