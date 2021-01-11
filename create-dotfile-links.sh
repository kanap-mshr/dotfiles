#!/bin/bash

scriptName=$(basename $0)
currentDir=$(cd $(dirname $0);pwd)

echo "${scriptName} start"

ln -sf ${currentDir}/.vimrc ~/.vimrc
ln -sf ${currentDir}/.zshrc ~/.zshrc
ln -sf ${currentDir}/.gitconfig ~/.gitconfig

echo "${scriptName} finish"
