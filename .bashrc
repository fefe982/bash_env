# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions
#export PS1=':${TERM}:${STY}:${WINDOW} \[\e[32m\]\u@\h\[\e[0m\] \t \[\e[33m\]\w\[\e[0m\]$(__git_ps1)\n\$ '
if [ -f ~/.local_bashrc ]; then
    . ~/.local_bashrc
fi
export PS1=':${TERM}:${STY}:${WINDOW} \[\e[32m\]\u@\h\[\e[0m\] \t \[\e[33m\]\w\[\e[0m\] $\n\$ '
export PROMPT_COMMAND='echo -ne "\033]0;${__comp_name__}-${STY}-${USER}@${HOSTNAME}: ${PWD}\007"'
export GIT_PROMPT_ONLY_IN_REPO=1
export GIT_PROMPT_START='\[\e[32m\]\u@\h{$STY:$WINDOW}\[\e[0m\] \t \[\e[33m\]\w\[\e[0m\]'
export GIT_PROMPT_THEME=Custom
source ~/.bash-git-prompt/gitprompt.sh

export CC=gcc
export CXX=g++
export LANG="en_US.utf8"
export SETUPTOOLS_ENABLE_FEATURES="legacy-editable"
ulimit -c unlimited

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias l.='ls -d .* --color=auto'
alias ll='ls -l --color=auto'
alias ls='ls --color=auto'
alias vi='vim'

