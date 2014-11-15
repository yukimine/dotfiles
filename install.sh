#!/bin/zsh
setopt EXTENDED_GLOB

# =====
# Vim
# =====
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -snf ~/dotfiles/.vim ~/.vim

# =====
# Zsh
# =====
for rcfile in ~/dotfiles/.zprezto/runcoms/^README.md(.N); do
  ln -sf "$rcfile" ~/."${rcfile:t}"
done
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -snf ~/dotfiles/.zprezto/ ~/.zprezto

