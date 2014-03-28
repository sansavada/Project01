#!/bin/bash

fileList=$(find . | grep -E ".+(txt|json|xml|html|py|cpp)")

imageFilelist=$(find .| grep -E ".+(jpg|png|gif|jpeg)" | sed 's/^..//')

for file in  $imageFilelist;
do
    out=$(grep -R -q $file $fileList);
    if [ $? -eq 1 ]; then
	echo $file;
    fi
done
