export PROMPT_COMMAND='"[\[\033[00;31m\]\@ \[\033[00;36m\]\u@\h:\[\033[00;33m\]\w \[\033[00m\]]" "\\\$ ";'

# enable color support of ls and grep
export LSCOLORS=gxfxbEaEBxxEhEhBaDaCaD
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;35;40'

if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi
