export PATH="~/drush:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
alias start_mysql='sudo /usr/local/mysql/bin/mysqld_safe &'
alias stop_mysql='mysqladmin shutdown -uroot -p'
export NODE_PATH=/usr/local/lib/node_modules