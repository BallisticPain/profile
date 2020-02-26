# return if not running interactively
[ -z "$PS1" ] && return
. /etc/profile > /dev/null

# history
HISTCONTROL=ignoredups
HISTSIZE=1000
shopt -s histappend
shopt -s cmdhist

# etc
shopt -s checkwinsize

export GREP_OPTIONS="--color=auto"
export GREP_COLOR="1;32"
export EDITOR="vim"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# pyenv
export PYENV_ROOT="${HOME}/.pyenv"

# prepeare paths variables for easier management
export PATHS_BREW="/usr/local/bin:/usr/local/sbin:/usr/local"
export PATHS_MINE="${HOME}/bin"
export PATHS_MYSQL="/usr/local/mysql/bin"
export PATHS_MYSQL_57="/usr/local/opt/mysql@5.7/bin"
export PATHS_OPENSSL="/usr/local/opt/openssl/bin"
export PATHS_PIPENV="${HOME}/.local/bin"
export PATHS_SYSTEM="/usr/bin:/bin:/usr/sbin:/sbin:/etc/paths.d:/etc/manpaths.d"
export PATHS_X11="/usr/X11/bin"
export PATHS_YARN="${HOME}/.yarn/bin"

# paths in order of importance
export PATH="${PATHS_MINE}:${PATHS_OPENSSL}:${PATHS_PIPENV}:${PATHS_YARN}:${PATHS_BREW}:${PATHS_X11}:${PATHS_SYSTEM}:${PATHS_MYSQL}"


#if type brew 2&>/dev/null; then
#    for completion_file in $(brew --prefix)/etc/bash_completion.d/*; do
#        source "$completion_file"
#    done
#fi


# use brew's openssl binaries, libraries, and pkg config
export LDFLAGS="-L/usr/local/opt/openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openssl/include"
export PKG_CONFIG_PATH="/usr/local/opt/openssl/lib/pkgconfig"

# pipenv
eval "$(pipenv --completion)"
export PIPENV_IGNORE_VIRTUALENVS=1

export HOMEBREW_GITHUB_API_TOKEN="<new_token_here>"

# Android Dev?
export ANDROID_HOME=~/Library/Android/sdk
export JAVA_HOME=/Library/Java/Home

# PPower use venv for VIRTUAL_ENV
export VIRTUAL_ENV=venv

# if we have git completion, use a git-aware prompt
if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
    PS1='\w $(__git_ps1 "(\[\033[31m\]%s\[\033[0m\]) ")\[\033[35m\]\$ \[\033[00m\]'
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

eval $(thefuck --alias)

# Include environment-specific odds-n-ends
#if [ -f ~/.bashrc.local ]; then
  #. ~/.bashrc.local
#fi

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

# iTerm 2 Integrations
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
