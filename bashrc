# return if not running interactively
[ -z "$PS1" ] && return
. /etc/profile > /dev/null

# history
HISTCONTROL=ignoredups
HISTSIZE=500
shopt -s histappend
shopt -s cmdhist

# etc
shopt -s checkwinsize

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;32"
export EDITOR="vim"

export PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local:/etc/paths.d:/etc/manpaths.d:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# if we have git completion, use a git-aware prompt
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
    PS1='\w $(__git_ps1 "(\[\033[31m\]%s\[\033[0m\]) ")\[\033[35m\]\$ \[\033[00m\]'
else
    # use a super-minimal prompt by default
    PS1='\w \$ '
fi

#if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
#  . /usr/local/git/contrib/completion/git-completion.bash
#  PS1='\w $(__git_ps1 "(%s) ")\$ '
#  else
#    # use a super-minimal prompt by default
#    PS1='\w \$ '
#fi

# ls colors
# (via http://github.com/inky/dotfiles/blob/master/home/.bashrc)
uname=$(uname)
if [ "$TERM" != "dumb" ]; then
    case "$uname" in
    Darwin|FreeBSD)
        export CLICOLOR=1
        export LSCOLORS="ExFxCxDxBxegedabagacad"  # legible colours
        ;;
    *)
        if [ -n "`which dircolors`" ]; then
            eval "`dircolors -b`" 2>/dev/null
            alias ls='ls --color=auto' 2>/dev/null
        fi
        ;;
    esac
fi

# Include environment-specific odds-n-ends
#if [ -f ~/.bashrc.local ]; then
  #. ~/.bashrc.local
#fi

# Include alias definitions
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Boot2Docker
if hash boot2docker 2>/dev/null; then
    dockerRunning="$(boot2docker status)"

    if test $dockerRunning != "running"; then
        boot2docker up
    fi

    `boot2docker shellinit`
fi
