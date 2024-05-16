#!/bin/zsh

# 0. New Macbook 😁
# 1. Clone this dotfiles repo to your root directory.
# 2. Run the scripts in this file: source ~/dotfiles/install.sh

echo "Setting up your Mac..."
echo "You might want to grab a cuppa ☕️ while we work through these scripts..."

# Installs Homebrew if not there
if ! command -v brew > /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Installs Oh My Zsh if not there
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Installs custom oh-my-zsh plugins if not there
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  echo "-----> Installing zsh plugin 'zsh-syntax-highlighting'..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting
fi

# Removes these config files from $HOME and symlinks the .zshrc and .gitconfig file from this dotfiles directory
rm $HOME/.zshrc
rm $HOME/.gitconfig
ln -s $HOME/dotfiles/zshrc $HOME/.zshrc
ln -s $HOME/dotfiles/gitconfig $HOME/.gitconfig

# Updates Homebrew recipes
brew update

# Installs all our CLI and GUI apps in Brewfile using bundle
brew bundle --file $HOME/dotfiles/Brewfile

# Creates code directory and clones Github repositories found in clone.sh
# mkdir $HOME/code && cd $HOME/code
# source $DOTFILES/clone.sh

# Set macOS preferences - we will run this last because this will reload the shell
# source $DOTFILES/.macos

echo "✅ Macbook's all set up for you, Alizeh!"
