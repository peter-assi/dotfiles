# increase the default 256 (did this for riak)
ulimit -n 1024

export EDITOR=/usr/bin/vim

export HISTSIZE=5000
export HISTCONTROL=ignoredups:erasedups

# Fix for SIMBL colors (http://blog.infinitered.com/entries/show/6)
export CLICOLOR=1;

export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[0;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'
alias colorslist="set | egrep 'COLOR_\w*'"  # lists all the color

# 
export TERM=xterm-color
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'

# prompt
#export PS1="\[${COLOR_LIGHT_PURPLE}\]\w $ \[${COLOR_NC}\]"

# git prompt
source ~/.git-completion.sh
export GIT_PS1_SHOWUNTRACKEDFILES=1
export GIT_PS1_SHOWDIRTYSTATE=1
#export PS1="\[${COLOR_LIGHT_PURPLE}\]\w\[${COLOR_NC}\]$(__git_ps1 "(%s)")\[${COLOR_LIGHT_PURPLE}\] \$\[${COLOR_NC}\] "
#export PS1='\w$(__git_ps1 "(%s)") \$ '
#export PS1='\e[1;34m\w\e[0m $(__git_ps1 "(%s)") \e[1;35m\$ \e[0m'
export PS1='\[\e[1;34m\]\w\[\e[0m\] $(__git_ps1 "(%s)") \[\e[1;35m\]\$ \[\e[0m\]'

# rspec 1.x
export SPEC_OPTS="--color --format specdoc"

# rspec 2.x
export SPEC_OPTS="--color --format doc"

#clojure
export PATH=$PATH:~/.cljr/bin

if [ -f ~/.bashrc ]; then
  source ~/.bashrc
fi 

if [ -f ~/.bash_aliases ]; then
  source ~/.bash_aliases
fi 
