#!/bin/sh

# Generate a new SSH key
ssh-keygen -t ed25519 -C "nodaguti@gmail.com" -f "${HOME}/.ssh/id_ed25519"

# Copy .sshconfig to ~/.ssh/config
cp "${HOME}/workspaces/dotfiles/configs/.sshconfig" "${HOME}/.ssh/config"

# Add the generated key to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add -K "${HOME}/.ssh/id_ed25519"
