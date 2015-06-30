# Path to your oh-my-zsh installation.
export ZSH=/home/paul/.oh-my-zsh

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/home/paul/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# my aliases
alias ll='ls -AlGF'
alias up='cd ..'
alias tmux="tmux -2"
alias 'open'='xdg-open'

# load in api keys
if [ -f ~/.zsh/apikeys ]; then
    source ~/.zsh/apikeys
else
    print "404: ~/.zsh/apikeys not found."
fi

# adding rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
