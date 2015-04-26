#!/bin/bash

url=$1
ext=$2
out=$3
 
from=1
if ! [ -z "$4" ]
then
	from=$4
fi

ret=0
while [ $ret -eq 0 ]; do
	wget "$url/$from.$ext" -P $out
	ret=$?
	((from++))
done

