# history
HISTCONTROL=ignoredups
HISTSIZE=1000
# shopt -s histappend
# shopt -s cmdhist

# etc
# shopt -s checkwinsize

# grep
export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;32"

# default editor
export EDITOR="vim"

# language
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"

# prepeare paths variables for easier management
export PATHS_BREW="/usr/local/bin:/usr/local/sbin:/usr/local"
export PATHS_MINE="${HOME}/bin"
export PATHS_MYSQL="/usr/local/mysql/bin"
export PATHS_MYSQL_57="/usr/local/opt/mysql@5.7/bin"
export PATHS_MYSQL_56="/usr/local/opt/mysql@5.6/bin"
export PATHS_OPENSSL="/usr/local/opt/openssl/bin"
export PATHS_PIPENV="${HOME}/.local/bin"
export PATHS_SYSTEM="/usr/bin:/bin:/usr/sbin:/sbin:/etc/paths.d:/etc/manpaths.d"
export PATHS_X11="/usr/X11/bin"
export PATHS_YARN="${HOME}/.yarn/bin"

# paths in order of importance
export PATH="${PATHS_MINE}:${PATHS_OPENSSL}:${PATHS_PIPENV}:${PATHS_YARN}:${PATHS_BREW}:${PATHS_X11}:${PATHS_SYSTEM}:${PATHS_MYSQL_57}"

# pipenv
eval "$(pipenv --completion)"
export PIPENV_IGNORE_VIRTUALENVS=1

export HOMEBREW_GITHUB_API_TOKEN="86d39e009822f913c2be3b2f084396ae0afdcfc8"

# Android Dev?
export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=/Library/Java/Home

# PPower use venv for VIRTUAL_ENV
export VIRTUAL_ENV=venv

eval $(thefuck --alias)

# Path to your oh-my-zsh installation.
export ZSH="/Users/ballisticpain/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="random"
# List of favorites when in "random" mode.
ZSH_THEME="xiong-chiamiov-plus"  # - has timestamp of last execution

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ansible brew django git-flow docker helm kubectl pyenv pipenv python thefuck)

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

# Include alias definitions
if [ -f ~/.sh_aliases ]; then
  . ~/.sh_aliases
fi

###-tns-completion-start-###
if [ -f ~/.tnsrc ]; then
    source ~/.tnsrc
fi
###-tns-completion-end-###

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
fi
