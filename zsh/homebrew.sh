if [ -f '/opt/homebrew/bin' ]; then
  eval $(/opt/homebrew/bin/brew shellenv)
else
  eval $(brew shellenv)
fi
