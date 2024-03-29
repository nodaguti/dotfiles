# Core Utils
export PATH="$(brew --prefix)/opt/coreutils/libexec/gnubin:$PATH"
export MANPATH="$(brew --prefix)/opt/coreutils/libexec/gnuman:$MANPATH"

# Java
export JAVA_HOME=`/usr/libexec/java_home`
export PATH="${JAVA_HOME}/bin:${PATH}"

# Python
export PATH="${HOME}/.poetry/bin:${PATH}"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
if [ ! -e $GOPATH ]; then
  mkdir -p $GOPATH
fi
