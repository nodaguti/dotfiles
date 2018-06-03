# load zgen
source "${HOME}/.zgen/zgen.zsh"

# check if there's no init script
if ! zgen saved; then
  echo "Creating a zgen save"

  zgen oh-my-zsh

  # colouring
  zgen load chrissicool/zsh-256color

  # features
  zgen load knu/zsh-git-escape-magic
  zgen load marzocchi/zsh-notify

  # completions
  zgen load zsh-users/zsh-completions src

  # theme
  zgen load caiogondim/bullet-train-oh-my-zsh-theme bullet-train

  # syntax highlight
  zgen load zsh-users/zsh-syntax-highlighting

  # generate the init script from plugins above
  zgen save
fi

# bullet train settings
export BULLETTRAIN_PROMPT_ORDER=(
  time
  status
  context
  dir
  git
  custom
  cmd_exec_time
)
export BULLETTRAIN_EXEC_TIME_SHOW=true
export BULLETTRAIN_STATUS_EXIT_SHOW=true
export BULLETTRAIN_GIT_COLORIZE_DIRTY=true
export BULLETTRAIN_CUSTOM_MSG='$(echo $NODE_ENV)'
export ZSH_THEME="bullet-train"

# enable auto update
export ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)