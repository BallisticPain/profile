#exports
export LS_OPTIONS='--color=auto'
export CLICOLOR='Yes'
export LSCOLORS=''

#ls
alias ll="ls -alh"

#git
alias gs="git status"
alias gd="git diff"
alias gc="git commit"
alias gco="git checkout"
alias gpl="git pull"
alias gps="git push"

#symfony 1.x
alias sf1="./symfony"
alias sf1cc="sf1 cache:clear"

#symfony 2.x
alias sf2="app/console"
alias sf2cc="sf2 cache:clear"
alias sf2d="sf2 doctrine"
alias sf2dsu="sf2d:schema:update"
alias sf2dfl="sf2d:fixture:load"
alias sf2dges="sf2d:generate:entities"

#sites
alias sites="cd /data/sites"

#I & R Partners
alias gfdev="cd ~/Development/GaugeFlex/"
alias gf2dev="cd ~/Development/GaugeFlexII/"
alias tfdev="cd ~/Development/TekFlex/"
alias dev="cd ~/Development"
alias 2020dev="cd ~/Development/2020Research"
