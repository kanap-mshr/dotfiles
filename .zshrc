# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/kanap/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="apple"
ZSH_THEME="garyblessington"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


##### ghコマンドの補完 #####
eval "$(gh completion -s zsh)"


##### Go #####
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"


##### Java #####
export JAVA_HOME=`/usr/libexec/java_home -v "14"`
export PATH=${JAVA_HOME}/bin:${PATH}

##### Python #####
eval "$(pyenv init -)"
# export PATH="/Users/$USER/.pyenv/versions/anaconda3-2020.11/bin:$PATH"  # commented out by conda initialize


##### conda コマンド #####

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/kanap/.pyenv/versions/anaconda3-2020.11/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/kanap/.pyenv/versions/anaconda3-2020.11/etc/profile.d/conda.sh" ]; then
        . "/Users/kanap/.pyenv/versions/anaconda3-2020.11/etc/profile.d/conda.sh"
    else
        export PATH="/Users/kanap/.pyenv/versions/anaconda3-2020.11/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


##### C# #####

# .NET Core SDK tools
export PATH="$PATH:/Users/kanap/.dotnet/tools"


##### flutter,dart #####

export PATH=$PATH:/Users/kanap/work/github/kanap-mshr/dotfiles/resources/flutter/bin


##### terraform-lsp #####

export PATH="$PATH:~/.bin"


##### awsp #####

function awsp() {
  if [ $# -ge 1 ]; then
    export AWS_PROFILE="$1"
    echo "Set AWS_PROFILE=$AWS_PROFILE."
  else
    source _awsp
  fi
  export AWS_DEFAULT_PROFILE=$AWS_PROFILE
}


##### 独自コマンド #####

# TODO: のちにシェルにする

PROTECT_BRANCHES='main|master|development'

git-delete-merged-branch() {
    git fetch --prune
    git branch --merged | egrep -v "\*|${PROTECT_BRANCHES}" | xargs git branch -d
}




##### alias #####

alias ranger='ranger ~/work/'
alias cwg='cd ~/work/github/'
alias pwdc='pwd | tr -d "\n" | pbcopy'
alias zshrc='vim ~/.zshrc'

