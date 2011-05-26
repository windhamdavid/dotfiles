PATH=/usr/local/bin:/usr/local/mysql/bin:$PATH
PATH=$PATH:/Users/david/drush
alias drush='/usr/local/php5/bin/php -d memory_limit=128M /Users/david/drush/drush.php --php="/usr/local/php5/bin/php -d memory_limit=128M"'
alias php=/usr/local/php5/bin/php 
export PATH=/Users/david/.rvm/gems/ruby-1.9.2-p180/bin:/Users/david/.rvm/gems/ruby-1.9.2-p180@global/bin:$PATH
#PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load nvm into shell session

# Colors
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export CLICOLOR=1 
export LSCOLORS=ExGxFxDxCxHxHxCbCeEbEb
export COLOR_NC='\033[0m' # No Color
export COLOR_WHITE='\033[1;37m'
export COLOR_BLACK='\033[0;30m'
export COLOR_BLUE='\033[0;34m'
export COLOR_LIGHT_BLUE='\033[1;34m'
export COLOR_GREEN='\033[0;32m'
export COLOR_LIGHT_GREEN='\033[1;32m'
export COLOR_CYAN='\033[0;36m'
export COLOR_LIGHT_CYAN='\033[1;36m'
export COLOR_RED='\033[0;31m'
export COLOR_LIGHT_RED='\033[1;31m'
export COLOR_PURPLE='\033[0;35m'
export COLOR_LIGHT_PURPLE='\033[1;35m'
export COLOR_BROWN='\033[0;33m'
export COLOR_YELLOW='\033[1;33m'
export COLOR_GRAY='\033[1;30m'
export COLOR_LIGHT_GRAY='\033[0;37m'