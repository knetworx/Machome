#alias vim=/Applications/MacVim.app/Contents/MacOS/MacVim
#function vim() { ( /Applications/MacVim.app/Contents/MacOS/MacVim "$@" & ) }
#alias ls='ls -AlFfGho'

#PS1="\[$bldblu\]\W \u\$\[txtrst\] "

if [ -n "$BASH_VERSION" ]; then
	if [ -f "$HOME/.bashrc" ]; then
		. "$HOME/.bashrc"
	fi
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh

# Other things that used to be here:
# /bin:
# /opt/X11/bin
# /opt/local/bin:
# /opt/local/sbin:
# /opt/subversion/bin:
# /sbin:
# /usr/bin:
# /usr/local/bin:
# /usr/sbin:

##
# Your previous /Users/nheilmann/.profile file was backed up as /Users/nheilmann/.profile.macports-saved_2013-03-06_at_11:36:46
##

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/opt/subversion/bin
export PATH=$PATH:/opt/X11/bin

#export PATH=$PATH/Users/nheilmann/Dropbox/ADT/sdk
export VENDOR_HOME=$HOME/kixeye/wc/vendor
export FLEX_HOME=$VENDOR_HOME/sdks/apache-flex-4.15
export COMPILE_THREADS=4

export BUILD_TOOLS=$HOME/kixeye/buildtools/src
export DATA_UPDATE_DIFF_CMD=$HOME/bin/araxissvndiff

#PATH=$(echo $PATH | awk -F: '{for (i=1;i<=NF;i++) { if ( !x[$i]++ ) printf("%s:",$i); }}')


#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
