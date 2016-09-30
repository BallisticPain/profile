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
export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

export HOMEBREW_GITHUB_API_TOKEN="11c93377a1babcb85f6408419d8680fe509fd9b4"

# use brew's folder for pyenv files
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# PPower use venv for VIRTUAL_ENV
export VIRTUAL_ENV=venv

# Android Dev
export ANDROID_HOME=/usr/local/Cellar/android-sdk/24.4.1_1
export JAVA_HOME=`/usr/libexec/java_home`

# if we have pyenv give me auto completion
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

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

###-tns-completion-start-###
if [ -f /Users/ballisticpain/.tnsrc ]; then 
    source /Users/ballisticpain/.tnsrc 
fi
###-tns-completion-end-###
