export PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin/:$PATH"
export PATH="$HOME/bin:$PATH"
export EDITOR="/usr/local/bin/mate -w"
export PATH=$PATH:/usr/local/mysql/bin
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
export PATH=$PATH:$HOME/.rvm/bin
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

set -o vi
export CLICOLOR=1
export GREP_OPTIONS='--color=auto'

export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -GFh'

source "`brew --prefix grc`/etc/grc.bashrc"
