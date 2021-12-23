#
# ~/.bashrc
#

## find command using pkgfile program 
source /usr/share/doc/pkgfile/command-not-found.bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# fuck program
eval "$(thefuck --alias)"

# ssh
if [ -z "$SSH_AUTH_SOCK" ] ; then
	eval "$(ssh-agent -s)" > /dev/null
	ssh-add ~/.ssh/github  > /dev/null 2> /dev/null
fi

mkcd () {
 mkdir "$1"
 cd "$1"
}

# scripts made by me
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

#starship
eval "$(starship init bash)"


# fzf
#export FZF_COMPLETION_TRIGGER=
source /usr/share/fzf/completion.bash
source /usr/share/fzf/key-bindings.bash
export FZF_COMPLETION_OPTS='--border --info inline --layout reverse'
