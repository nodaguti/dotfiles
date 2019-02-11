#!/bin/sh

brew install zsh zsh-completions
sudo sh -c 'echo /usr/local/bin/zsh >> /etc/shells'
chsh -s /usr/local/bin/zsh

ln -s "${HOME}/dotfiles/zsh/.zshrc" "${HOME}/.zshrc"

# zgen
git clone https://github.com/tarjoilija/zgen.git "${HOME}/.zgen"
