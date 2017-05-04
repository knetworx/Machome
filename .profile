
# Get the actual source location of this script
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
	DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
	SOURCE="$(readlink "$SOURCE")"
	[[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

if [[ $- =~ "i" ]]; then
	echo "DIR = $DIR"
	echo "Sourcing: $BASH_ARGV"
fi

if [ -n "$BASH_VERSION" ]; then
	if [ -f "$DIR/.bashrc" ]; then
		. "$DIR/.bashrc"
	fi
fi

test -r /sw/bin/init.sh && . /sw/bin/init.sh

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:/usr/bin
export PATH=$PATH:/bin
export PATH=$PATH:/usr/sbin
export PATH=$PATH:/sbin
export PATH=$PATH:/opt/subversion/bin
export PATH=$PATH:/opt/X11/bin
export PATH=$PATH:~/bin

export VENDOR_HOME=$HOME/kixeye/wc/vendor
export FLEX_HOME=$VENDOR_HOME/sdks/apache-flex-4.15
export COMPILE_THREADS=4

export BUILD_TOOLS=$HOME/kixeye/buildtools/src
export DATA_UPDATE_DIFF_CMD=$HOME/bin/araxissvndiff

#PATH=$(echo $PATH | awk -F: '{for (i=1;i<=NF;i++) { if ( !x[$i]++ ) printf("%s:",$i); }}')


#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
