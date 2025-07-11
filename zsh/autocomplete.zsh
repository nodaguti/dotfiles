autoload -Uz compinit
compinit -u

setopt auto_param_slash
setopt mark_dirs
setopt list_types
setopt auto_menu
setopt auto_param_keys
setopt complete_in_word
setopt always_last_prompt

# Highlight selected completion
zstyle ':completion:*:default' menu select=2

# Colouring completion
zstyle ':completion:*' verbose yes
zstyle ':completion:*' completer _expand _complete _match _prefix _approximate _list _history
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*:messages' format '%F{YELLOW}%d'$DEFAULT
zstyle ':completion:*:warnings' format '%F{RED}No matches for:''%F{YELLOW} %d'$DEFAULT
zstyle ':completion:*:descriptions' format '%F{YELLOW}completing %B%d%b'$DEFAULT
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:descriptions' format '%F{yellow}Completing %B%d%b%f'$DEFAULT

# Grouping completions
zstyle ':completion:*' group-name ''

# Ignore case
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# Don't auto-complete the current directory after `../`
zstyle ':completion:*' ignore-parents parent pwd ..

# Auto-complete after `sudo`
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
/usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin /opt/homebrew/sbin /opt/homebrew/bin

# Add homebrew completions
if [[ ":$FPATH:" != *":${HOME}/.zsh/completions:"* ]]; then export FPATH="${HOME}/.zsh/completions:$FPATH"; fi
