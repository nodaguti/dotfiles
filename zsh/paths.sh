# Core Utils
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix)/opt/coreutils/libexec/gnuman:$MANPATH"

# Java
export JAVA_HOME="/opt/homebrew/opt/openjdk/bin"
export PATH="${JAVA_HOME}:$PATH"
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# Python
export PATH="${HOME}/.poetry/bin:${PATH}"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
if [ ! -e $GOPATH ]; then
  mkdir -p $GOPATH
fi
