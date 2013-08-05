# alias
alias rm				"/bin/rm -i"
alias tin			"/usr/local/bin/tin -r"
alias	"ptt"			"telnet ptt.cc"
alias	"ptt2"		"telnet ptt2.cc"
alias	"bs2"			"telnet bs2.to"
#alias ls				'gnuls -F --color=auto --show-control-chars'
alias ls				'ls --color=auto -F'
alias h				'history'
alias j				'jobs -l'
alias la				'ls -a'
alias lf				'ls -FA'
alias ll				'ls -lhA'
alias mv				'mv -iv'
alias cp				'cp -i'
alias rm				'rm -i'
alias cd..			'cd ..'
# do not search into svn directories
alias grep			"grep --color --exclude-dir='.svn'"
alias cg				"grep -n -r --include='*.[ch]'"
alias less			'less -M'
alias s				'ssh -2'
alias ifc			'ifconfig'
alias make-patch  'diff -Naur'
# put any ssh alias here

# A righteous umask
umask 22

set color
set autolist
set history = 500
set savehist = 500

setenv EDITOR 	vim
setenv   BLOCKSIZE   M

# colorful ls
setenv LSCOLORS 'GaGaFadaCaDaDaAcacafaF'
setenv CLICOLOR
setenv LS_COLORS ':no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:ex=01;32:*.cmd=01;32:*.exe=01;32:*.com=01;32:*.btm=01;32:*.bat=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.c=01;33:*.cpp=01;33:*.MP3=01;44;37:*.mp3=01;44;37:*.pl=01;33:*.java=01;35:*.html=00;36:*.htm=00;36:*.php=00;36:*.rar=01;31:*.JPG=01;35:*.doc=00;32:*.ppt=00;32:'
setenv NAME "Che-Pin-Chang"

# For colorful man pages
setenv	LESS_TERMCAP_mb		`printf '\033[1;31m'`
setenv	LESS_TERMCAP_md		`printf '\033[1;31m'`
setenv	LESS_TERMCAP_me		`printf '\033[0m'`
setenv	LESS_TERMCAP_se		`printf '\033[0m'`
setenv	LESS_TERMCAP_so		`printf '\033[1;44;33m'`
setenv	LESS_TERMCAP_ue		`printf '\033[0m'`
setenv	LESS_TERMCAP_us		`printf '\033[1;32m'`

# bind keypad keys for console, vt100, vt102, xterm
bindkey "\e[1~" beginning-of-line  # Home
bindkey "\e[2~" overwrite-mode     # Ins
bindkey "\e[3~" delete-char        # Delete
bindkey "\e[4~" end-of-line        # End

if ($?prompt) then
	set prompt="%{[32m%}[%{[31m%}%t %{[36m%}%n%{[37m%}@%{[32m%}`hostname -s` %{[33m%}%c3%{[32m%}]%{[0m%}%# "
   set promptchars="%#"
	set filec
	set mail = (/var/mail/$USER)
	if ($?tcsh) then
		bindkey "^W" backward-delete-word
		bindkey "^B" beginning-of-line
		bindkey "^E" end-of-line
		# history search backward
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif
endif

# for dynamic screen title
# set prompt="%{\ek\e\\%}%{%}[%n@%m]%{%}%~%{%}> "
# set prompt="%}[%n@%m]%{%}%~%{%}> "


# UTF-8 environment
setenv LC_ALL zh_TW.UTF-8
setenv LANG	  zh_TW.UTF-8
setenv LESS "-fmrSw"
setenv LESSCHARDEF "8bcccbcc18b95.."

complete sudo   'p/1/c/'

# cscope db
