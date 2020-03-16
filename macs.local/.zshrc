ZSH=$HOME/.oh-my-zsh
export PATH="/usr/local/opt/openssl/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:/usr/local/share/npm/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/git/bin:$PATH"
export PATH=/usr/local/share/npm/bin:$PATH
export NODE_PATH=/usr/local/lib/node_modules
export PATH="$PATH:~/.composer/vendor/bin"

MYSQL=/usr/local/mysql/bin
export PATH=$PATH:$MYSQL
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

ZSH_THEME="dpoggi"
export EDITOR='mate -w'
export EDITOR='subl -w'
DISABLE_AUTO_UPDATE="false"
source $ZSH/oh-my-zsh.sh

##### PLUGINS ######
#
plugins=(history-substring-search git golang gulp grunt textmate)
ZSH_COLORIZE_TOOL=chroma
ZSH_COLORIZE_STYLE="sunburst"

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
alias gpom="git push origin master"
alias gpcm="git push code master"
alias gpod="git push origin dev"
alias gpcd="git push code dev"

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

####### BREW #########
alias brewp='brew pin'
alias brews='brew list -1'
alias brewsp='brew list --pinned'
alias bubo='brew update && brew outdated'
alias bubc='brew upgrade && brew cleanup'
alias bubu='bubo && bubc'
alias bcubo='brew update && brew cask outdated'
alias bcubc='brew cask reinstall $(brew cask outdated) && brew cleanup'

# CASE_SENSITIVE="true"
# DISABLE_AUTO_UPDATE="true"
# export UPDATE_ZSH_DAYS=33
# DISABLE_CORRECTION="true"
# COMPLETION_WAITING_DOTS="true"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

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

fpath=(/usr/local/share/zsh-completions $fpath)

export KEYTIMEOUT=1
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
