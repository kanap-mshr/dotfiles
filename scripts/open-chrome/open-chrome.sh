#!/bin/bash
while read line
do
  echo $line
  open -a "Google Chrome" "$line"
  sleep 0.5
done < ./url-list.txt
