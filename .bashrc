#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '
alsi -n


PROMPT_COMMAND=${PROMPT_COMMAND:+$PROMPT_COMMAND; }'disown -a -h'

export VISUAL=/usr/bin/nano

export EDITOR=/usr/bin/nano


# Pacman alias
alias pacrem='sudo pacman -Rns'		# Remove the specified package(s), its configuration(s) and unneeded dependencies

#colorized ls
alias ls='ls --color=auto' 

#dropbear
alias ssh=dbclient

#colorized man pages
man() {
    env LESS_TERMCAP_mb=$'\E[01;31m' \
    LESS_TERMCAP_md=$'\E[01;38;5;74m' \
    LESS_TERMCAP_me=$'\E[0m' \
    LESS_TERMCAP_se=$'\E[0m' \
    LESS_TERMCAP_so=$'\E[38;5;246m' \
    LESS_TERMCAP_ue=$'\E[0m' \
    LESS_TERMCAP_us=$'\E[04;38;5;146m' \
    man "$@"
}
#History Completion
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#rubypath
PATH="$(ruby -e 'print Gem.user_dir')/bin:$PATH"

