#!/bin/zsh
setopt EXTENDED_GLOB

# =====
# Vim
# =====
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -snf ~/dotfiles/.vim ~/.vim

# =====
# IntelliJ IDEA
# =====
ln -sf ~/dotfiles/.ideavimrc ~/.ideavimrc

# =====
# Xcode
# =====
ln -sf ~/dotfiles/.xvimrc ~/.xvimrc

# =====
# Zsh
# =====
for rcfile in ~/dotfiles/.zprezto/runcoms/^README.md(.N); do
  ln -sf "$rcfile" ~/."${rcfile:t}"
done
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zpreztorc ~/.zpreztorc
ln -snf ~/dotfiles/.zprezto/ ~/.zprezto

# =====
# submodule update
# =====
cd ~/dotfiles
git submodule update -i

cd ~/.zprezto
git submodule update -i

# =====
# 環境変数とかはここに書く
# =====
touch ~/dotfiles/.zsh/first.zsh
