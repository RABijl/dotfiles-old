#
# ~/.bash_logout
#

if [ -n "$SSH_AUTH_SOCK" ] ; then
	eval "$(ssh-agent -K)"
fi
