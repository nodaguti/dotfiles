#!/bin/sh

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install git
brew install git

# Create a workspace
mkdir -p "${HOME}/workspaces"
cd "${HOME}/workspaces"

# Clone this repository
git clone https://github.com/nodaguti/dotfiles.git dotfiles
cd dotfiles

# Run!
./init/step1/init.sh
