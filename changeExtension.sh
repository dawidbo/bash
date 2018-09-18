#!/bin/bash  
#find files with extension param 1 and change to extesion from param 2
declare -i cnt=0
fileName=

#check is 2 params
[[ $# -ne 2 ]] && { echo "2 parameters needed" >&2; exit 1; } 

for f in *$1; do
	fileName=$(basename "$f" ".$1") 
	mv $f "$fileName.$2"
	printf "file mv from %s to %s \n" $f $fileName.$2 
done
exit 0
