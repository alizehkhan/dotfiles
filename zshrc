export DOTFILES=$HOME/dotfiles
export ZSH="$HOME/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"

ZSH_THEME="robbyrussell"
HIST_STAMPS="dd/mm/yyyy"
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

[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Call `nvm use` automatically in a directory with a `.nvmrc` file
autoload -U add-zsh-hook
load-nvmrc() {
  if nvm -v &> /dev/null; then
    local node_version="$(nvm version)"
    local nvmrc_path="$(nvm_find_nvmrc)"

    if [ -n "$nvmrc_path" ]; then
      local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

      if [ "$nvmrc_node_version" = "N/A" ]; then
        nvm install
      elif [ "$nvmrc_node_version" != "$node_version" ]; then
        nvm use --silent
      fi
    elif [ "$node_version" != "$(nvm version default)" ]; then
      nvm use default --silent
    fi
  fi
}
type -a nvm > /dev/null && add-zsh-hook chpwd load-nvmrc
type -a nvm > /dev/null && load-nvmrc

# Load aliases
source $DOTFILES/aliases.sh
# Load oh-my-zsh
source $ZSH/oh-my-zsh.sh
