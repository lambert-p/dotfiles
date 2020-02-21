# Path to your oh-my-zsh installation.
if [ `uname` = 'Darwin' ] ; then
    export ZSH=/Users/paul/.oh-my-zsh
else
    export ZSH=/home/paul/.oh-my-zsh
fi

if [[ $TERM == xterm ]]; then
    TERM=xterm-256color
fi

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# launch tmux automatically
# [[ $- != *i* ]] && return
# [[ -z "$TMUX" ]] && exec tmux -2

# my aliases
alias ll='ls -AlGF'
alias up='cd ..'
alias tmux="tmux -2"

# aliases for mac
if [ `uname` = 'Darwin' ]; then
   alias emacs='open /Applications/Emacs.app'
else
    alias 'open'='xdg-open'
fi

