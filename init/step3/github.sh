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

PUBLIC_KEY=`cat ${SSH_KEY}`

JSON=`jq -j '.' <<EOS
{
  "title": "${SSH_KEY_TITLE}",
  "key": "${PUBLIC_KEY}"
}
EOS
`

echo "Path: ${SSH_KEY}"
echo $JSON
echo '-------------------------------'

read -p "Username? " USERNAME
read -s -p "Password? " PASSWORD
echo ''
read -s -p "One-Time Password? " OTP
echo '\n'

curl -u "${USERNAME}:${PASSWORD}" -H 'Content-Type:application/json' -H "X-GitHub-OTP:${OTP}" -d "${JSON}" https://api.github.com/user/keys

export GITHUB_USERNAME="${USERNAME}"
