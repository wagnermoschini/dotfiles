#!/bin/sh

echo "Setting up..."

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

# rewrite .zshrc
yes | cp -rf ~/dotfiles/.zshrc ~/.zshrc

# Make ZSH default
chsh -s $(which zsh)

# Install z
echo "Installing z"
git clone https://github.com/rupa/z.git ~/z

####################
# Vim things
####################
echo "Vim plug"
# vim-plug
curl -fLo ~/dotfiles.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# link .vim and vimrc
echo "vim dir and file links"
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vim/vimrc ~/.vimrc

# link .tmux.conf
echo "tmux conf link"
ln -sf ~/dotfiles/.tmux.conf ~/.tmux.conf
