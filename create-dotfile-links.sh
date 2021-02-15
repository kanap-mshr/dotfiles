#!/bin/bash

scriptName=$(basename $0)
currentDir=$(cd $(dirname $0);pwd)

echo "${scriptName} start"

# 各種ドットファイルのリンク作成
ln -sf ${currentDir}/.vimrc ~/.vimrc
ln -sf ${currentDir}/.zshrc ~/.zshrc
ln -sf ${currentDir}/.gitconfig ~/.gitconfig

# plantuml用
mkdir -p ~/local/lib/
ln -sf ${currentDir}/resources/plantuml.jar ~/local/lib/plantuml.jar

# 自作スクリプト(~/bin)
mkdir -p ~/bin/scripts/
ln -sf ${currentDir}/scripts/*.sh ~/bin/scripts/

echo "${scriptName} finish"
