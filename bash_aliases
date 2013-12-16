# some more aliases
alias rm="/bin/rm -i"
alias tin="/usr/local/bin/tin -r"
alias telnet="/usr/local/bin/zh-telnet"
alias h='history'
alias j='jobs -l'
alias ls='ls -GF'
alias la='ls -a'
alias lf='ls -FA'
alias ll='ls -lhA'
alias mv='mv -iv'
alias cp='cp -i'
alias rm='rm -i'
alias cd..='cd ..'
alias less='less -M'
alias s='ssh -2'

# Custom Alias definitions.
if [ -f ~/.bash_custom_aliases ]; then
	. ~/.bash_custom_aliases
fi

