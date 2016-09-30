#exports
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=''

# Virtualenv
alias sv='if [[ ! -d "venv" && ! -L "venv" ]] ; then virtualenv venv; touch requirements.txt; fi; source venv/bin/activate; export PS1="(${PWD##*/}-venv)$_OLD_VIRTUAL_PS1"'

#ls
alias ll="ls -alh"

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
alias dm="docker-machine"

#phinx
alias phinx="./vendor/bin/phinx"

#sites
alias sites="cd /data/sites"

#I & R Partners
alias gfdev="cd ~/Development/GaugeFlex/"
alias gf2dev="cd ~/Development/GaugeFlexII/"
alias tfdev="cd ~/Development/TekFlex/"
alias dev="cd ~/Development"
alias 2020dev="cd ~/Development/2020Research"
