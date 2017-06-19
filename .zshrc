if [ "$TMUX" = "" ]; then tmux; fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to dotfiles instalation
export DOTFILES=$HOME/.dotfiles

# Path to your oh-my-zsh installation.
export ZSH=/Users/wmoschini/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$DOTFLIES

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras github npm)

source $ZSH/oh-my-zsh.sh

##########################################
# PATHS
##########################################

# NVM
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# YARN
export PATH="$PATH:`yarn global bin`"

#########################################
# ALIAS
#########################################

# shell stufs
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"
alias zshrc="source $HOME/.zshrc"

# general shortcuts
alias copyssh="pbcopy < $HOME/.ssh/id_rsa.pub"
alias weather="curl -4 http://wttr.in"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"

# HUB
alias git=hub

# Directories
alias dotfiles="cd $DOTFILES"
alias library="cd $HOME/Library"

# User configuration

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

. z/z.sh
