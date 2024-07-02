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

# Initialise nvm
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Call `nvm use` automatically in a directory with a `.nvmrc` file. Taken from https://github.com/nvm-sh/nvm#zsh
autoload -U add-zsh-hook

load-nvmrc() {
  local nvmrc_path
  nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version
    nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$(nvm version)" ]; then
      nvm use
    fi
  elif [ -n "$(PWD=$OLDPWD nvm_find_nvmrc)" ] && [ "$(nvm version)" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}

add-zsh-hook chpwd load-nvmrc
load-nvmrc
#-------------------

# Load aliases
source $DOTFILES/aliases.sh
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
