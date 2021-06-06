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
  echo "[INFO] delete DS_Store files ..."
  find ~/ -name '.DS_Store' -type f -ls -delete
}

before
main
after

