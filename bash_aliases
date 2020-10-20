alias ls='ls -GF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias rm="/bin/rm -i"
alias tin="/usr/local/bin/tin -r"
alias telnet="/usr/local/bin/zh-telnet"
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

# Custom Alias definitions.
if [ -f ~/.bash_custom_aliases ]; then
	. ~/.bash_custom_aliases
fi

