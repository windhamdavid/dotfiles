PATH=/usr/local/bin:/usr/local/mysql/bin:$PATH
PATH=$PATH:/Users/david/drush
alias drush='/usr/local/php5/bin/php -d memory_limit=128M /Users/david/drush/drush.php --php="/usr/local/php5/bin/php -d memory_limit=128M"'
alias php=/usr/local/php5/bin/php 
PATH="/Library/Frameworks/Python.framework/Versions/Current/bin:${PATH}"
export PATH
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
[[ -s "$HOME/.nvm/nvm.sh" ]] && source "$HOME/.nvm/nvm.sh" # Load nvm into shell session