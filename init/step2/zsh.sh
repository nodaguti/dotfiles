#!/bin/sh

brew install zsh zsh-completions
sudo sh -c 'echo $(brew --prefix)/bin/zsh >> /etc/shells'
chsh -s $(brew --prefix)/bin/zsh

ln -s "${HOME}/workspaces/dotfiles/zsh/.zshrc" "${HOME}/.zshrc"

# zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
compaudit | xargs chmod g-w,o-w
