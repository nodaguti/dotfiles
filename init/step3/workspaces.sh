#!/bin/sh

USERNAME="${GITHUB_USERNAME}"

if [ -z "$USER_NAME" ]; then
  read -p 'Github Username? ' USERNAME
fi

pushd "${HOME}/workspaces"

REPOS_URL=`curl -s "https://api.github.com/users/${USERNAME}" | jq -r .repos_url`
PAGE=1

while :
do
  REPOS=`curl -s "${REPOS_URL}?page=${PAGE}"`

  if [ `echo $REPOS | jq '. | length'` -eq 0 ]; then
    break
  fi

  echo $REPOS \
  | jq -r '.[] | select(.fork == false) | select(.name != "dotfiles") | .ssh_url' \
  | xargs -n1 git clone

  PAGE=`expr ${PAGE} + 1`
done

popd
