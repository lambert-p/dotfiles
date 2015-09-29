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

if [ `uname` = 'Darwin' ] ; then
    export PATH="$PATH:/Users/paul/.rvm/gems/ruby-2.2.0/bin:/Users/paul/.rvm/gems/ruby-2.2.0@global/bin:/Users/paul/.rvm/rubies/ruby-2.2.0/bin:/Users/paul/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/mongodb/bin"
else
    export PATH="/home/paul/.rvm/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
fi


source $ZSH/oh-my-zsh.sh

export EDITOR='vim'

# load in api keys
# if [ -f ~/.zsh/apikeys ]; then
#     source ~/.zsh/apikeys
# else
#     print "404: ~/.zsh/apikeys not found."
# fi

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
   alias gcc='gcc-4.8'
   alias g++='g++-4.8'
   alias python='python2'
   alias PYTHON='python2'
else
    alias 'open'='xdg-open'
fi

export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)

# adding rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
