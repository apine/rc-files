# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
	debian_chroot=$(cat /etc/debian_chroot)
fi

# add git info prompt
# Downliad git-prompt.sh here:
# https://raw.github.com/git/git/master/contrib/completion/git-prompt.sh
#
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
source ~/.git-prompt.sh

#export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
export PROMPT_COMMAND='__git_ps1 "[\[\033[00;31m\]\@ \[\033[00;36m\]\u@\h:\[\033[00;33m\]\w \[\033[00m\]]" "\\\$ ";'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
	test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
	alias ls='ls --color=auto'
	alias grep='grep --color=auto'
	alias fgrep='fgrep --color=auto'
	alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias rm="/bin/rm -i"
alias tin="/usr/local/bin/tin -r"
alias telnet="/usr/local/bin/zh-telnet"
alias	"ptt"="telnet ptt.cc"
alias	"ptt2"="telnet ptt2.cc"
alias	"bs2"="telnet bs2.to"
alias h='history'
alias j='jobs -l'
alias la='ls -a'
alias lf='ls -FA'
alias ll='ls -lhA'
alias mv='mv -iv'
alias cp='cp -i'
alias rm='rm -i'
alias cd..='cd ..'
alias less='less -M'
alias s='ssh -2'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
	. /etc/bash_completion
fi