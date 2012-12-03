# return if not running interactively
[ -z "$PS1" ] && return
. /etc/profile > /dev/null

# behave like vi
#set -o vi

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

export HOME_BIN="~"
export PATH="$HOME_BIN/bin:$PATH"

export BYOBU_PREFIX=`brew --prefix`

export PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin:/usr/local:/etc/paths.d:/etc/manpaths.d:/opt/PalmPDK/bin:/opt/PalmSDK/0.1/bin"
export PATH="$(brew --prefix josegonzalez/php/php53)/bin:$PATH"

export MIDGARD_ENV_GLOBAL_SHAREDIR="/usr/local/share/midgard2"

export PYTHONPATH="/Library/Python/2.7/site-packages:$PYTHONPATH"

export TEXMFROOT="/usr/local/texlive/2012"

if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# if we have git completion, use a git-aware prompt
if [ -f /usr/local/git/contrib/completion/git-completion.bash ]; then
  . /usr/local/git/contrib/completion/git-completion.bash
  PS1='\w $(__git_ps1 "(%s) ")\$ '
  else
    # use a super-minimal prompt by default
    PS1='\w \$ '
fi

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
