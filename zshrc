# This file will run every time you start a terminal session or run the zsh command.

# Global environment variables
export DOTFILES=$HOME/dotfiles
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"

# Path to the directory with .zshrc
ZSH_CUSTOM=$DOTFILES

# Auto-update without asking
zstyle ':omz:update' mode auto

# Useful oh-my-zsh plugins
plugins=(
  git
  zsh-syntax-highlighting
  history-substring-search
  last-working-dir
  web-search
)

# Load aliases
source $DOTFILES/aliases.sh
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# switch the Node.js version based on the requirements of the current directory, based on .node-version or .nvmrc
eval "$(fnm env --use-on-cd --shell zsh)"
