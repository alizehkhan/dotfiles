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

# Automatically switch the Node.js version when you cd into a directory with a .node-version or .nvmrc file
eval "$(fnm env --use-on-cd --shell zsh)"

# Automatically switch tool versions when you cd into a directory with a .tool-versions or mise.toml config file
eval "$(mise activate zsh)"

source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

