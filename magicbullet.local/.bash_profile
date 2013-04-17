export PATH="$HOME/bin:$PATH"
export EDITOR="/usr/local/bin/mate -w"
export PATH=$PATH:/usr/local/mysql/bin
alias mysql=/usr/local/mysql/bin/mysql
alias mysqladmin=/usr/local/mysql/bin/mysqladmin
export PATH=$PATH:$HOME/.rvm/bin

set -o vi


export CLICOLOR=1
export GREP_OPTIONS='--color=auto'


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
