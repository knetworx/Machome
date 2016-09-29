# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# My custom file for making environment-dependent settings
myenv='unknown'
if [ -f ~/.bash_os_env ]; then
	. ~/.bash_os_env
fi

# git auto-completion
if [ -f git-completion.bash ]; then
	. git-completion.bash
fi

# svn auto-completion
if [ -f svn-completion.bash ]; then
	. svn-completion.bash
fi

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

#if [ "$color_prompt" = yes ]; then
#    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
#else
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
#fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
#case "$TERM" in
#xterm*|rxvt*)
#    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
#    ;;
#*)
#    ;;
#esac

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

txtblk='\e[0;30m' # Black - Regular
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White
bldblk='\e[1;30m' # Black - Bold
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White
unkblk='\e[4;30m' # Black - Underline
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White
bakblk='\e[40m'   # Black - Background
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White
txtrst='\e[0m'    # Text Reset

#export PS1='[\[\033[41;1m\] LIVE \[\033[0m\]] \u@\h:\w$ '
# Set a nice pretty prompt
PS1="\[$txtred\](\T) \[$txtcyn\]\u@\H \[$txtgrn\]\W \$\[$txtrst\] "
# Add Set the terminal title
PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\W\a\]$PS1"
ALCHEMY=/usr/local/alchemy/sdk
#if [ myenv == 'mac' ]; then
	#export PATH=$PATH:~/sw/erlang/bin:~/sw/ejabberd-2.1.8/sbin:~/bin:.
	#export MANPATH=$MANPATH:~/sw/erlang/man
	#export KIXEYE_EJABBERD_EBIN=/Users/nheilmann/sw/ejabberd-2.1.8/lib/ejabberd/ebin
	#export GS_TOOLS=/Users/nheilmann/kixeye/gs-tools
	#export ANT_HOME=$GS_TOOLS/tools/apache-ant-1.8.4
	#export ANT_OPTS="-Xmx512M -Xms512M -XX:PermSize=256M -XX:MaxPermSize=256M -XX:ReservedCodeCacheSize=256M"
#fi
export GREP_OPTIONS='--color=auto'

# Note: Other export commands are in .profile

# See: http://en.wikipedia.org/wiki/ANSI_escape_code

#Colors
#		 fg 30+ / bg 40+
# black			0
# red			1
# green			2
# yellow		3
# blue			4
# magenta		5
# cyan			6
# white			7
#export GREP_COLOR='1;34'
export GREP_COLOR='0;32'

if [ myenv == 'mac' ]; then
	function ff { osascript -e 'tell application "Finder"'\
		-e "if (${1-1} <= (count Finder windows)) then"\
		-e "get POSIX path of (target of window ${1-1} as alias)"\
		-e 'else' -e 'get POSIX path of (desktop as alias)'\
		-e 'end if' -e 'end tell'; };\
	
	function cdff { cd "`ff $@`"; };
fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
