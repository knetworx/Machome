#!/bin/bash
echo "1: $1"
echo "2: $2"
echo "3: $3"
echo "4: $4"
echo "5: $5"
echo "6: $6"
echo "7: $7"
scratch=~/.svndiffscratch
if [ ! -d "$scratch" ]; then
	mkdir $scratch
fi
find $scratch -ctime +5s -type f -delete
filename="${7##*/}"
#echo "p1 = $filename"
newfile=$scratch/$filename
#echo "New file name = $newfile"
cp $6 $newfile
#echo "First diff file: $newfile"
#echo "Second diff file: $7"
vim -d $newfile $7
