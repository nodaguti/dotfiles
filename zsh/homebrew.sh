if [ -d '/opt/homebrew/bin' ]; then
  eval $(/opt/homebrew/bin/brew shellenv)
else
  eval $(brew shellenv)
fi

if type brew &> /dev/null; then
  brew autoupdate start --upgrade --cleanup
fi
