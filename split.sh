#!/bin/bash

filePath=$1

while read line
do
  IFS=$2 eval 'array=($line)'
  echo -n "${array[0]}" >> result.txt
done < $filePath
