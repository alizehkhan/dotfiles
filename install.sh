#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if you don't have it
if test ! $(which brew); then
  echo "-----> Installing brew..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Check for Oh My Zsh and install if you don't have it
if test ! $(which omz); then
  echo "-----> Installing zsh..."
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Install custom oh-my-zsh plugins
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"
mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  echo "-----> Installing custom oh-my-zsh plugins"
  git clone https://github.com/zsh-users/zsh-syntax-highlighting
fi

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file $DOTFILES/Brewfile

# Create a code directory
mkdir $HOME/code

# Clone Github repositories
$DOTFILES/clone.sh

# Set macOS preferences - we will run this last because this will reload the shell
source $DOTFILES/.macos
