export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
if [ ! -e $GOPATH ]; then
  mkdir -p $GOPATH
fi