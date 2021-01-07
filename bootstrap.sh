#!/bin/sh

# Agree the Xcode license
sudo xcodebuild -license accept

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Create a workspace
mkdir -p "${HOME}/workspaces"
cd "${HOME}/workspaces"

# Clone this repository
git clone https://github.com/nodaguti/dotfiles.git dotfiles
cd dotfiles

# Run!
source "${HOME}/workspaces/dotfiles/init/step1/init.sh"
