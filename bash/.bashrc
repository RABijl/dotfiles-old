#
# ~/.bashrc
#

## find command 
source /usr/share/doc/pkgfile/command-not-found.bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

eval "$(thefuck --alias)"

mkcd () {
 mkdir "$1"
 cd "$1"
}

HOMEMADESCRIPTS=~/Projects/scripts
PATH=$PATH:$HOMEMADESCRIPTS
export PATH
# mp4grep environment variables -------
export MP4GREP_CACHE='/usr/bin/mp4grep-0.1.0/.mp4grep_cache'
export MP4GREP_MODEL='/usr/bin/mp4grep-0.1.0/model'
export PATH="$PATH:/usr/bin/mp4grep-0.1.0/bin"
# --------------------------------------

#kitty 
alias icat="kitty +kitten icat"
