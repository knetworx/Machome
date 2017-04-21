#!/bin/bash
#echo "1: $1"
#echo "2: $2"
#echo "3: $3"
#echo "4: $4"
#echo "5: $5"
#echo "6: $6"
#echo "7: $7"
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
$vimcmd -d "$1" "$2" >/dev/null
