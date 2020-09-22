#!/bin/bash
input="/home/eddy/Desktop/Dean/urls"
#number=1
numberOfLines=$(wc -l $input | grep -o -E '[0-9]')
numberOfLines=$(echo $numberOfLines | tr -d ' ')

for i in $(seq 1 $numberOfLines)
do
fileNumValue=$(sed "${i}q;d" $input)
wget -O ${i}.jpg $fileNumValue
done
