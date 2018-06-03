#!/bin/sh

brew install coreutils
brew install terminal-notifier
brew install hub
brew install imagemagick
brew install ffmpeg
brew install python3
brew install cloc
brew install heroku/brew/heroku
brew install dnscrypt-proxy
# brew install wine

# Google Cloud SDK
curl https://sdk.cloud.google.com | bash
exec -l $SHELL
gcloud init