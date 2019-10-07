#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

export WORK_DIR=$HOME/Workspaces

# nvm
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

# go
export GOPATH=$HOME/Workspaces/.go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

# rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# omise
alias run-interface="cd $WORK_DIR/omise-interfaces && rails s -p 3000 -b 127.0.0.1"
alias run-interface-sidekiq="cd $WORK_DIR/omise-interfaces && bin/sidekiq -c 1"
alias run-gateway="cd $WORK_DIR/omise-gateway && bin/rails s -p 4500 -b 127.0.0.1"

# purepower config
source ~/.purepower.zsh

# must be the last
clear && cd $WORK_DIR
