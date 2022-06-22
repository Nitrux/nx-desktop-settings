# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set theme for robyrusell when login to a TTY
if [[ `echo "$TERM"` != "xterm" ]]; then  
  ZSH_THEME="robbyrussell"  
fi

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

# Aliases for apt
alias apt="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"

# Aliases for apt-*
alias apt-cache="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-cdrom="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-config="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-extracttemplates="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-ftparchive="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-get="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-key="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias apt-mark="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'" 
alias apt-sortpkgs="echo 'Whoops! Looks like you are trying to use APT in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"

# Aliases for dpkg
alias dpkg="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"

# Aliases for dpkg-*
alias dpkg-architecture="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-buildflags="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-checkbuilddeps="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-deb="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-distaddfile="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-divert="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-fsys-usrunmess="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-genbuildinfo="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-genchanges="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-gencontrol="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-maintscript-helper="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-mergechangelogs="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-name="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-parsechangelog="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-preconfigure="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-query="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-realpath="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-reconfigure="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-scanpackages="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-scansources="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-shlibdeps="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-source="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-split="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-statoverride="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-trigger="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"
alias dpkg-vendor="echo 'Whoops! Looks like you are trying to use dpkg in $(cat /etc/os-release | grep "PRETTY_NAME=*" | rev | cut -d '=' -f 1 | rev)'; echo ' '; echo 'We strongly emphasize using AppImages over Debian packages'; echo ' '; echo 'However, to manage Debian packages from the repositories please use: pkcon and press Enter'; echo ' '; echo 'For help use: pkcon --help'; echo ' '; echo 'pkcon DOES NOT REQUIRE sudo'"

# Aliases for others
alias sudo='sudo '
alias pkexec='pkexec '

# # Add $PATH for NPM
# export NPM_PACKAGES="${HOME}/.npm-packages"
# export NODE_PATH="$NPM_PACKAGES/lib/node_modules${NODE_PATH:+:$NODE_PATH}"
# export PATH="$PATH:$NPM_PACKAGES/bin:$PATH"

# # Preserve MANPATH if you already defined it somewhere in your config.
# # Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
# export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Make DrKonqi shupt the F up
export KDE_DEBUG=1

# Add $PATH for AppImages
export PATH="/Applications:$PATH"

# Add $PATH for sbin
export PATH="/usr/local/sbin:/usr/sbin:/sbin:$PATH"

# Allow sudo to be removed
export SUDO_FORCE_REMOVE=yes
