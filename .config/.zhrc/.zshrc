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

# osx
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

# ruby
export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
alias be="bundle exec"

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

# postgres
export PATH="/usr/local/opt/libpq/bin:$PATH"

# Add homebrew to the completion path
fpath=("/usr/local/bin/" $fpath)

# omise
alias run-core="cd $WORK_DIR/omise-core && rails s -p 3000 -b 127.0.0.1"
alias run-core-sidekiq="cd $WORK_DIR/omise-core && bin/sidekiq -c 1"
alias run-pandora="cd $WORK_DIR/omise-pandora && bin/rails s -p 4500 -b 127.0.0.1"
export PATH="$HOME/.bin:$PATH"

# purepower config
source ~/.purepower.zsh

# yubikey and vault
export GPG_TTY="$(tty)"
export AWS_VAULT_BACKEND="pass"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpg-connect-agent updatestartuptty /bye

# must be the last
clear && cd $WORK_DIR

