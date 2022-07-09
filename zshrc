export DOTFILES=$HOME/.dotfiles
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"
ZSH_CUSTOM=$DOTFILES

# Auto-update without asking
zstyle ':omz:update' mode auto

plugins=(
  git
  zsh-syntax-highlighting
  history-substring-search
  last-working-dir
  web-search
)

source $ZSH/oh-my-zsh.sh
