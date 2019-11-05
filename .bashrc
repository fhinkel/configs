export VISUAL=vim
export EDITOR="$VISUAL"

alias gm='tools/dev/gm.py'


export PATH=$HOME/depot_tools:"$PATH"

export GYP_GENERATORS=ninja

export NVM_DIR=$HOME/.nvm
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# Git autocompletion
. ~/.git-completion.bash

# Fancy prompt
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\e[35m\]\w$(__git_ps1 " (%s)")\$\[\e[0m\] '



# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
# negative values for no limit
#HISTSIZE=-1
#HISTFILESIZE=-1

## bash history
# http://briancarper.net/blog/248.html
# bash just keeps on adding to the end of the ~/.bash_history 
# file rather than obliterate the file at regular intervals.
shopt -s histappend
# sync bash history between terminals, all the time
export PROMPT_COMMAND="history -a; history -n"

# enable programmable completion features
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
      . /etc/bash_completion
fi

