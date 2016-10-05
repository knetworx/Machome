# vi:set filetype=sh:

# Get the actual source location of this script
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
  DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
  SOURCE="$(readlink "$SOURCE")"
  [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
echo "Sourcing: $DIR/.bash_aliases"

# Since the current file may be shared between different types of machines, Put the
# .bash_os_env file in your home dir, rather than the same dir as the current script
if [ -e ~/.bash_os_env ]; then
	. ~/.bash_os_env
fi

lsopts="-CG"

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    #lsopts=$lsopts" --color=auto"
    #alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=always'
    alias fgrep='fgrep --color=always'
    alias egrep='egrep --color=always'
fi

if [ $myenv != 'mac' ]; then
	#alias ls="ls -CG --group-directories-first"
    lsopts=$lsopts" --color=auto"
	#lsopts=$lsopts" --group-directories-first"

	# On Mac, dotfiles are sorted first, but on linux they're sorted inline
	# This forces dotfiles to be sorted first
	export lC_ALL="C"
fi
alias ls="ls $lsopts"
alias ll="ls $lsopts -olhF"

alias la="ls $lsopts -olhFA"
alias l="ls $lsopts -F"

alias less='less -i -x4'
alias less='less -R'

#alias vi='/usr/local/bin/vim'

#alias traceflashlog='tail -f ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt | perl -pe "s/\[NICK\]/\e[1;31;43m$&\e[0m/g"'

#alias tags='ctags -R -f ~/.vtags --c++-kinds=+p --fields=+iaS --extra=+q .'
#alias tags='ctags -R -f ~/.vtags --c++-kinds=+p --fields=+iaS --extra=+q /Volumes/kixeye/enyo/trunk'

if [ $myenv == 'chatserver' ]; then
	alias fixext='sudo cp /opt/SFS2X-RC1b/SFS2X/extensions/KixeyeExtension/KixeyeExtension.jar_backup /opt/SFS2X-RC1b/SFS2X/extensions/KixeyeExtension/KixeyeExtension.jar'
	alias mvext='sudo cp /opt/SFS2X-RC1b/SFS2X/extensions/KixeyeExtension/KixeyeExtension.jar /opt/SFS2X-RC1b/SFS2X/extensions/KixeyeExtension/KixeyeExtension.jar_backup;sudo mv ~/KixeyeExtension.jar /opt/SFS2X-RC1b/SFS2X/extensions/KixeyeExtension/KixeyeExtension.jar'
	alias mvwords='sudo mv ~/wordsFile* /opt/SFS2X-RC1b/SFS2X/config'
	alias serverstart='sudo /opt/SFS2X-RC1b/SFS2X/sfs2x-service start'
	alias serverstatus='/opt/SFS2X-RC1b/SFS2X/sfs2x-service status'
	alias serverstop='sudo /opt/SFS2X-RC1b/SFS2X/sfs2x-service stop'
fi

if [ $myenv == 'battleserver' ]; then
	alias serverrestart='sudo service battleserver restart'
fi

if [ $myenv == 'mac' ]; then
	alias vim='~/mvim'
	alias ffg='/Applications/Adobe\ Flash\ CS5.5/Players/Debug/Flash\ Player\ Debugger.app/Contents/MacOS/Flash\ Player\ Debugger &'
fi

if [ -e $DIR/traceflashlog.sh ]; then
	alias traceflashlog=$DIR/traceflashlog.sh
fi

if [ -e $DIR/vimdiffsvn.sh ]; then
	alias vimdiffsvn=$DIR/vimdiffsvn.sh
fi

alias gitlogpretty="git log --no-merges --abbrev-commit --pretty=format:'%h %an: %s'"

alias changelistall='svn cl checkmein $(svn st | awk '"'"'{if ($1 == "M" || $1 == "A" || $1 == "D") print $2; else if ($1 == "---") exit}'"'"')'
alias unchangelistall='svn cl --remove $(svn st | awk '"'"'{if ($1 == "M" || $1 == "A" || $1 == "D") print $2; else if (NF == 1) print $1;}'"'"' | grep -v Changelist)'
alias testunchangelistall='echo $(svn st | awk '"'"'{if ($1 == "M" || $1 == "A" || $1 == "D") print $2; else if (NF == 1) print $1;}'"'"' | grep -v Changelist)'
alias ignore='svn cl IGNOREME'
alias remove='svn cl --remove'
alias commit='svn ci --cl checkmein'
#if [[ $myenv == 'mac' && ! -L /Volumes/kixeye ]]; then
#	echo "Creating /Volumes/kixeye in ~/.bash_aliases"
#	ln -s ~/kixeye /Volumes/kixeye
#fi

alias screensaverbackground='/System/Library/Frameworks/ScreenSaver.framework/Resources/ScreenSaverEngine.app/Contents/MacOS/ScreenSaverEngine -background &'

# Get readable list of network IPs
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

