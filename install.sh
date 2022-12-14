#!/bin/zsh

echo "Setting up your Mac..."

# Checks for Homebrew and installs if you don't have it
if test ! $(which brew); then
  echo "-----> Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Checks for Oh My Zsh and installs if you don't have it
if test ! $(which omz); then
  echo "-----> Installing Oh My Zsh..."
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

# Installs custom oh-my-zsh plugins if you don't yet have them
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  echo "-----> Installing zsh plugin 'zsh-syntax-highlighting'..."
  git clone https://github.com/zsh-users/zsh-syntax-highlighting
fi

# Removes .zshrc from $HOME and symlinks the .zshrc file from your .dotfiles directory
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Updates Homebrew recipes
brew update

# Installs all our CLI and GUI apps in Brewfile
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Creates code directory and clones Github repositories
mkdir $HOME/code && cd $HOME/code
source $DOTFILES/clone.sh

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos
