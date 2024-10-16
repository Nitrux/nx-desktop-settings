# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
#alias ll='ls -l'
#alias la='ls -A'
#alias l='ls -CF'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
#	shellcheck source=/dev/null
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
#	shellcheck source=/dev/null
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# Aliases for others
alias sudo='sudo '
alias pkexec='pkexec '

# Consistently display only our custom directories.
function ls() {
    local new_args=()
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            new_args+=("/System" "/Applications" "/Users")
        elif [[ "$arg" == "/home/$USER" ]]; then
            new_args+=("/Users/$USER")
        else
            new_args+=("$arg")
        fi
    done
    command ls "${new_args[@]}"
}

function tree() {
    local new_args=()
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            new_args+=("/System" "/Applications" "/Users")
        elif [[ "$arg" == "/home/$USER" ]]; then
            new_args+=("/Users/$USER")
        else
            new_args+=("$arg")
        fi
    done
    command tree "${new_args[@]}"
}

function dir() {
    local new_args=()
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            new_args+=("/System" "/Applications" "/Users")
        elif [[ "$arg" == "/home/$USER" ]]; then
            new_args+=("/Users/$USER")
        else
            new_args+=("$arg")
        fi
    done
    command dir "${new_args[@]}"
}

function vdir() {
    local new_args=()
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            new_args+=("/System" "/Applications" "/Users")
        else
            new_args+=("$arg")
        fi
    done
    command vdir "${new_args[@]}"
}

function grep() {
    local new_args=()
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            new_args+=("/System" "/Applications" "/Users")
        elif [[ "$arg" == "/home/$USER" ]]; then
            new_args+=("/Users/$USER")
        else
            new_args+=("$arg")
        fi
    done
    command grep "${new_args[@]}"
}

function cat() {
    local new_args=()
    for arg in "$@"; do
        if [[ "$arg" == "/" ]]; then
            new_args+=("/System" "/Applications" "/Users")
        elif [[ "$arg" == "/home/$USER" ]]; then
            new_args+=("/Users/$USER")
        else
            new_args+=("$arg")
        fi
    done
    command cat "${new_args[@]}"
}

# Make DrKonqi shut the F up
export KDE_DEBUG=1

# Add $PATH for AppImages
export PATH="/Applications:$PATH"

# Add $PATH for sbin
export PATH="/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# Allow sudo to be removed
export SUDO_FORCE_REMOVE=yes

# Add environment variables for Plasma Wayland to use Nvidia GBM
export GBM_BACKEND=nvidia-drm
export __GLX_VENDOR_LIBRARY_NAME=nvidia

# Add Flatpak environment variables to XDG_DATA_DIRS
export XDG_DATA_DIRS="/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share:$XDG_DATA_DIRS"

# Add variables for Firefox to work with touchscreens in X11 and Wayland
export MOZ_USE_XINPUT2=1
export MOZ_ENABLE_WAYLAND=1

# Add variables for Fcitx5
export INPUT_METHOD=fcitx
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
export XIM_SERVERS=fcitx

# Add variable to make Plasma use Qt scaling
export PLASMA_USE_QT_SCALING=1

# Add variable for Qt scale factor
export QT_SCALE_FACTOR=1
