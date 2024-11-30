ZSH=$HOME/.oh-my-zsh
export ZSH="/Users/david/.oh-my-zsh"

ZSH_THEME="dpoggi"

###### Plugins ######
plugins=(
  history-substring-search
  git
  gulp
  grunt
  vs
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

###### Keys ######
bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
export KEYTIMEOUT=1

###### Options ######
# HIST_STAMPS="mm/dd/yyyy"
# ZSH_CUSTOM=/path/to/new-custom-folder
# zstyle ':omz:update' frequency 13
# DISABLE_MAGIC_FUNCTIONS="true"
# DISABLE_LS_COLORS="true"
# DISABLE_AUTO_TITLE="true"
# ENABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# DISABLE_UNTRACKED_FILES_DIRTY="true"
# export MANPATH="/usr/local/man:$MANPATH"
# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=33
# DISABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# export MANPATH="/usr/local/man:$MANPATH"
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# export ARCHFLAGS="-arch x86_64"
# export ARCHFLAGS="-arch arm64"
# export SSH_KEY_PATH="~/.ssh/dsa_id"

source $ZSH/oh-my-zsh.sh

alias zshconfig="vc ~/.zshrc"
alias ohmyzsh="vc ~/.oh-my-zsh"

###### LIST ######
alias l='ls -lFh'     #size,show type,human readable
alias la='ls -lAFh'   #long list,show almost all,show type,human readable
alias lr='ls -tRFh'   #sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'   #long list,sorted by date,show type,human readable
alias ll='ls -l'      #long list

###### GIT #######
#alias zshconfig="mate ~/.zshrc"
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

####### BREW #########
alias brewp='brew pin'
alias brews='brew list -1'
alias brewsp='brew list --pinned'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'
alias bcubo='brew update && brew cask outdated'
alias bcubc='brew cask reinstall $(brew cask outdated) && brew cleanup'

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

##### GULP ######
alias gr="gulp run"
alias gb="gulp build"
alias gcl="gulp clean"

####### Laravel ########
alias pa='php artisan'
alias pacache='php artisan cache:clear'
alias paroutes='php artisan route:list'
alias pavendor='php artisan vendor:publish'
_laravel_get_command_list () {
	php artisan --raw --no-ansi list | sed "s/[[:space:]].*//g"
}
_laravel () {
  if [ -f artisan ]; then
    compadd `_laravel_get_command_list`
  fi
}
compdef _laravel artisan
compdef _laravel pa

export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"

export PATH=$HOME/bin:/usr/local/bin:$PATH
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#export PATH="/opt/homebrew/opt/php@7.4/bin:$PATH"
#export PATH="/opt/homebrew/opt/php@7.4/sbin:$PATH"

#export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
#export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"

export PATH="/opt/homebrew/opt/php@8.3/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.3/sbin:$PATH"

#export PATH="/opt/homebrew/opt/php/bin:$PATH"
#export PATH="/opt/homebrew/opt/php/sbin:$PATH"

export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"