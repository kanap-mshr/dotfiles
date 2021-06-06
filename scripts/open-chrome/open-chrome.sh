#!/bin/bash

function before() {
	readonly execDir=`pwd`
	readonly scriptDir=$(cd $(dirname $0); pwd)
	cd $scriptDir
}

function after() {
	cd $execDir
}

function main() {
  echo "edit command is ... "
  echo -n "vim "
  ls "${scriptDir}/../open-chrome/url-list.txt"

  while read line
  do
    # echo $line
    open -a "Google Chrome" "$line"
    sleep 0.5
  done < ../open-chrome/url-list.txt
}

before
main
after

