#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# =====
# $B%(%$%j%"%9(B
# =====
alias vir='vim -R'

# =====
# .zshrc$B$rJ,3d(B
# $B;29M!'(Bhttp://d.hatena.ne.jp/dgdg/20071127/1196179056
# =====
ZSHHOME="${HOME}/dotfiles/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
  for i in $ZSHHOME/*; do
    [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
  done
fi
