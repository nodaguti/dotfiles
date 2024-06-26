# Enhancements
alias diff='diff -u'
alias ls='ls -a --color=auto'
alias mkdir='mkdir -p'
alias grep='ggrep'
alias sed='gsed'

# One-charactor abbreviations
alias g=git
alias k=kubectl
alias y=yarn
alias n=node
alias b=brew
alias p=pnpm

# Enable alias after `sudo`
alias sudo='sudo '

function extract() {
  case $1 in
    *.tar.gz|*.tgz) tar xzvf $1;;
    *.tar.xz) tar Jxvf $1;;
    *.zip) unzip $1;;
    *.lzh) lha e $1;;
    *.tar.bz2|*.tbz) tar xjvf $1;;
    *.tar.Z) tar zxvf $1;;
    *.gz) gzip -d $1;;
    *.bz2) bzip2 -dc $1;;
    *.Z) uncompress $1;;
    *.tar) tar xvf $1;;
    *.arj) unarj $1;;
  esac
}

alias -s {gz,tgz,zip,lzh,bz2,tbz,Z,tar,arj,xz}=extract
