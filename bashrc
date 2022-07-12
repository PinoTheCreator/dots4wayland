# /etc/skel/.bashrc
#
# This file is sourced by all *interactive* bash shells on startup,
# including some apparently interactive shells such as scp and rcp
# that can't tolerate any output.  So make sure this doesn't display
# anything or bad things will happen !


# Test for an interactive shell.  There is no need to set anything
# past this point for scp and rcp, and it's important to refrain from
# outputting anything in those cases.
if [[ $- != *i* ]] ; then
	# Shell is non-interactive.  Be done now!
	return
fi

# Put your fun stuff here.

alias dwl='dbus-run-session dwl -s "startway.sh"'
alias ls='ls --group-directories-first --color=auto --human-readable --classify'

alias depclean='doas emerge --depclean --ask'
alias deselect='doas emerge --deselect --ask'
alias fetchflags='emerge --pretend --verbose'
alias search='emerge --search'
alias upd='doas emerge --sync --quiet'
alias upg='doas emerge --verbose --quiet --deep --update --changed-use --ask @world'
alias world="cat /var/lib/portage/world"

complete -cf doas
complete -cf man

neofetch
