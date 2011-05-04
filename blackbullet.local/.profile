

 
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
alias start_mysql='sudo /usr/local/mysql/bin/mysqld_safe &'
alias stop_mysql='mysqladmin shutdown -uroot -p'