#!/bin/bash

num=0
for var in "$@"; do
	args[$num]=$var
	num=$((num+1))
done

lines=10
dogrep=0
index=1

while getopts ":gn:" opt; do
	index=$OPTIND
	case "$opt" in
		n)
			lines=$OPTARG
			;;
		g)
			dogrep=1
			;;
		:)
			echo "One of your arguments is missing a secondary argument"
			exit 1
			;;
		*)
			echo "Unknown option: $opt"
			;;
	esac
done

index=$((index-1))

if [ $dogrep -eq 1 ]; then
	tail -f -n $lines ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt | grep -i ${args[$index]}
else
	tail -f -n $lines ~/Library/Preferences/Macromedia/Flash\ Player/Logs/flashlog.txt | perl -pe "s/"${args[$index]}"/\e[32;40m$&\e[0m/gi" 
fi
