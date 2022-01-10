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
  custom
  cmd_exec_time
)
export BULLETTRAIN_EXEC_TIME_SHOW=true
export BULLETTRAIN_STATUS_EXIT_SHOW=true
export BULLETTRAIN_CUSTOM_MSG='$(if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1); then; echo " $(git branch --show-current)"; fi)'
export BULLETTRAIN_CUSTOM_BG=${BULLETTRAIN_GIT_BG}
export BULLETTRAIN_CUSTOM_FG=${BULLETTRAIN_GIT_FG}
export ZSH_THEME="bullet-train"

# enable auto update
export ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc ${HOME}/.zshrc.local)
