#!/bin/bash
#echo "1: $1"
#echo "2: $2"
#echo "3: $3"
#echo "4: $4"
#echo "5: $5"
#echo "6: $6"
#echo "7: $7"

# Titles look like this:
# path/to/file.ext (revision 123)
# path/to/file.ext (working copy)
file1title=$3
file2title=$5
# Files look like this:
# Arbitrary revision in the repo:
# /var/folders/6v/djydnph15h3g48ytkhjbr3kmvdp7sp/T/svn-k3VinV
# Last updated version of file:
# /somepath/.svn/pristine/a6/a6f3c8442fc0dab25cdf063c38f7640ba6c5e988.svn-base
# Current working version of file:
# /Users/nheilmann/kixeye/wc/feature/client/src/com/cc/build/BuildingSprites.as
file1=$6
file2=$7

# A place to temporarily copy our diffing files
scratch=~/.svndiffscratch
if [ ! -d "$scratch" ]; then
	mkdir $scratch
fi
find $scratch -cmin +1 -type f -delete

# Get the base filename - should be able to grab it from either of the titles...unless you're diffing 2 different filenames
filename=`echo $file1title | sed "s/ *(.*//"`
filename="${filename##*/}"

r1=`echo $file1title | sed "s/[^ ]* (\(.*\))$/\1/"`
#echo "First revision = $r1"
r2=`echo $file2title | sed "s/[^ ]* (\(.*\))$/\1/"`
#echo "Second revision = $r2"

r1="$(echo -e "${r1}" | tr -d '')"
# Remove all spaces from "revision xxx" or "working copy"
r1=`echo $r1 | sed "s/ //"`
r2=`echo $r2 | sed "s/ //"`
mkdir "$scratch/$r1"
file1copy="$scratch/$r1/$filename"
#echo "copying to '$file1copy'"
cp $file1 "$file1copy"

# Use a function to make it clear what's happening
function cmdexists() {
	hash $1 2>/dev/null;
}
vimcmd=vi
if cmdexists mvim; then
	vimcmd=mvim
elif cmdexists vim; then 
	vimcmd=vim
fi

#TODO - don't send output to /dev/null for terminal-based diff 

if echo "$file2" | grep $filename; then
	# Diffing old revision on left with current file on right
	$vimcmd -d "$file1copy" "$file2"
else
	# Diffing two revisions, neither is the current file
	r2="$(echo -e "${r2}" | tr -d '')"
	mkdir "$scratch/$r2"
	file2copy="$scratch/$r2/$filename"
	cp $file2 "$file2copy"
	$vimcmd -d "$file1copy" "$file2copy"
fi
