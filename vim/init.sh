#!bin/sh

####################
# Vim things
####################
echo "Vim plug"
# vim-plug
curl -fLo ~/dotfiles/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# link .vim and vimrc
echo "vim dir and file links"
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vim/vimrc ~/.vimrc
 
