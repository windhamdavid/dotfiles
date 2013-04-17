ZSH=$HOME/.oh-my-zsh
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

# ZSH_THEME="random"
# ZSH_THEME="flazz"
# ZSH_THEME="rbates"
ZSH_THEME="dpoggi"
# ZSH_THEME="kafeitu"
# ZSH_THEME="fino"


export EDITOR='mate -w'
DISABLE_AUTO_UPDATE="true"
source $ZSH/oh-my-zsh.sh

plugins=(git)
plugins=(textmate)
plugins=(ruby)
plugins=(rails)
plugins=(node)

PATH=$PATH:$HOME/.rvm/bin
