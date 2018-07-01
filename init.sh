#!/bin/sh

echo "Setting up..."

# Git things
git config --global core.autocrlf input


# Check for homebrew and install it
if test ! $(which brew); then
  echo "Installing homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "homebrew allready instaled"
fi

# Update homebrew
brew update

# Install dependencies (Brewfile)
brew tap homebrew/bundle
brew bundle


echo "Beginning node stuffs"
# Create NVM dir
mkdir ~/.nvm
echo ".nvm dir created"

export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

nvm install node
echo "last node version instaled"
echo "node stuffs done"

# Install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# link .zshrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc

# Make ZSH default
chsh -s $(which zsh)

# Install z
echo "Installing z"
git clone https://github.com/rupa/z.git ~/z

sh ./vim/init.sh

# TMUX CONF
# link .tmux.conf
echo "tmux conf link"
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
