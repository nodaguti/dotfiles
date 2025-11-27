# Core Utils
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix)/opt/coreutils/libexec/gnuman:$MANPATH"

# Java
export JAVA_HOME="$(brew --prefix)/opt/openjdk/bin"
export PATH="${JAVA_HOME}:$PATH"
export CPPFLAGS="-I$(brew --prefix)/opt/openjdk/include"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
if [ ! -e $GOPATH ]; then
  mkdir -p $GOPATH
fi

# mise
if type mise &> /dev/null; then
  eval "$(mise activate zsh)"
fi

# Rancher Desktop
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="${HOME}/.rd/bin:$PATH"
