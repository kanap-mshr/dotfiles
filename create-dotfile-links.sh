#!/bin/bash

scriptName=$(basename $0)
currentDir=$(cd $(dirname $0);pwd)

echo "${scriptName} start"

ln -sf ${currentDir}/.vimrc ~/.vimrc
ln -sf ${currentDir}/.zshrc ~/.zshrc

echo "${scriptName} finish"
