source ~/.config/fish/alias.fish

# Load all saved ssh keys
/usr/bin/ssh-add -A ^/dev/null

# Setup Jump
status --is-interactive; and source (jump shell fish | psub)

# rbenv
status --is-interactive; and source (rbenv init -| psub)

# Golang developers might need this one
set -xg GOPATH $HOME/gocode

# Python developers otherwise
set -xg PYTHONDONTWRITEBYTECODE 1
