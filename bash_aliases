#exports
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=''

# Virtualenv
alias sv='if [[ ! -d "venv" && ! -L "venv" ]] ; then virtualenv venv; touch requirements.txt; fi; source venv/bin/activate; export PS1="(${PWD##*/}-venv)$_OLD_VIRTUAL_PS1"'

# Common
#alias ls='ls -F --color=always'
alias dir='dir -F --color=always'
alias ll="ls -alh"
alias cp='cp -iv'
alias rm='rm -i'
alias mv='mv -iv'
alias grep='grep --color=auto -in'
alias ..='cd ..'

#python
alias pe="pipenv" # manage packages and virtual environments
alias pei="pe install"
alias pes="pe shell"
alias pesf="pes --fancy"
alias pye="pyenv" # manage multiple python versions

#git
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gco="git checkout"
alias gpl="git pull"
alias gps="git push"

#symfony 
alias sf="bin/console"
alias sfcc="sf cache:clear"
alias sfd="sf doctrine"
alias sfdsu="sfd:schema:update"
alias sfdfl="sfd:fixture:load"
alias sfdges="sfd:generate:entities"

#docker
alias d="docker"
alias dc="docker-compose"

#airnav docker
alias dca="dc -p airnav"
alias dcal="dca logs -f --tail=200"

#phinx
alias phinx="./vendor/bin/phinx"

#sites
alias sites="cd /data/sites"

alias dev="cd ~/Development"
