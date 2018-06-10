#!/bin/sh

COMMENT="$1"
OUTPUT="$2"

if [ -z "$COMMENT" ]; then
  COMMENT="nodaguti@gmail.com"
fi

if [ -z "$OUTPUT" ]; then
  OUTPUT="${HOME}/.ssh/id_ed25519"
fi


# Generate a new SSH key
ssh-keygen -t ed25519 -C "${COMMENT}" -f "${OUTPUT}"

# Copy .sshconfig to ~/.ssh/config
cp "${HOME}/workspaces/dotfiles/configs/.sshconfig" "${HOME}/.ssh/config"

# Add the generated key to the ssh-agent
eval "$(ssh-agent -s)"
ssh-add -K "${OUTPUT}"
