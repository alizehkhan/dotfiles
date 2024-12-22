# This file will run every time you start a terminal session or run the zsh command.

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Global environment variables
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Auto-update without asking
zstyle ':omz:update' mode auto

# Useful oh-my-zsh plugins
plugins=(
  git
  zsh-syntax-highlighting
  history-substring-search
  last-working-dir
)

# Load aliases
source $HOME/dotfiles/aliases.sh
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh

# pnpm
export PNPM_HOME="/Users/alizehkhan/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# switch the Node.js version based on the requirements of the current directory, based on .node-version or .nvmrc
eval "$(fnm env --use-on-cd --shell zsh)"