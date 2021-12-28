#!/bin/sh

SSH_KEY="$1"
SSH_KEY_TITLE="$2"

if [ -z "$SSH_KEY" ]; then
  SSH_KEY="${HOME}/.ssh/id_ed25519.pub"
fi

if [[ ! "$SSH_KEY" == *.pub ]]; then
  SSH_KEY="${SSH_KEY}.pub"
fi

if [ -z "$SSH_KEY_TITLE" ]; then
  SSH_KEY_TITLE=`hostname`
fi

gh auth login
gh ssh-key add --title ${SSH_KEY_TITLE} ${SSH_KEY}

export GITHUB_USERNAME="${USERNAME}"
