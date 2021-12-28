#!/bin/sh

USERNAME="${GITHUB_USERNAME}"

if [ -z "$USER_NAME" ]; then
  read -p 'Github Username? ' USERNAME
fi

pushd "${HOME}/workspaces"

gh repo list ${USERNAME} --limit 100 --source | sed -e 's/\t.*$//g' | xargs -n 1 gh repo clone

popd
