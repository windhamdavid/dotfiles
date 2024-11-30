export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="dpoggi"

plugins=(git)

source $ZSH/oh-my-zsh.sh

DISABLE_AUTO_UPDATE=true
DISABLE_UPDATE_PROMPT=true

###### LIST ######
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list

###### GIT #######
alias ga="git add"
alias gaa="git add -A"
alias gc="git commit -m '"
alias gs="git status"
alias gcm="git checkout master"
alias gcd="git checkout dev"
alias gmd="git merge dev"
alias gpom="git push origin main"
alias gpcm="git push code main"
alias gprm="git push org main"
alias gpor="git push origin master"
alias gpcr="git push code master"
alias gpod="git push origin dev"
alias gpcd="git push code dev"

##### NPM #####
alias nit="npm init --yes"
alias not="npm outdated"
alias nu="npm update"
alias ni="npm install"
alias nu="npm uninstall"
alias nis="npm install --save"
alias nus="npm uninstall --save"
alias nid="npm install --save-dev"
alias nud="npm uninstall --save-dev"
alias nip="npm install --save-prod"
alias nup="npm uninstall --save-prod"

##### YARN #####
alias ya='yarn add'
alias yi='yarn install'
alias yit='yarn init'
alias yr='yarn remove'