#!/bin/zsh

#DIR=$0:A
#echo "DIR = $DIR"
#
#SCRIPT_DIR=`dirname ${BASH_SOURCE[0]-$0}`
#SCRIPT_DIR=`cd $SCRIPT_DIR && pwd`
#echo "SCRIPT_DIR = $DIR"

# Detect if this is an SSH session
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  export ENV_SSH=1
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) export ENV_SSH=1;;
  esac
fi

DIR="$(pwd)"
export ENV_TYPE=`uname -s | awk '{print tolower($0)}'`
if [ "$ENV_TYPE" = "darwin" ]; then
	export ENV_TYPE='mac'
fi

if [ -f $DIR/.functions ]; then
	. $DIR/.functions
fi

# Alias definitions.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f $DIR/.aliases ]; then
	. $DIR/.aliases
fi

if [ -f $DIR/.env_vars ]; then
	. $DIR/.env_vars
fi
