# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


# solve vim can't use back space
bindkey "^?" backward-delete-char

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel9k/powerlevel9k"
#ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

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

# set python virtualenv
ZSH_THEME_VIRTUALENV_PREFIX="["
ZSH_THEME_VIRTUALENV_SUFFIX="]"

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	osx
	zsh-syntax-highlighting
	virtualenv
)

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

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_HOST_ICON="\uF109 "
#
#
## VCS icons
#P9K_VCS_GIT_ICON=$'\uf1d2 '
#P9K_VCS_GIT_GITHUB_ICON=$'\uf113 '
#P9K_VCS_GIT_GITLAB_ICON=$'\uf296 '
#P9K_VCS_BRANCH_ICON=$''
#P9K_VCS_STAGED_ICON=$'\uf055'
#P9K_VCS_UNSTAGED_ICON=$'\uf421'
#P9K_VCS_UNTRACKED_ICON=$'\uf00d'
#P9K_VCS_INCOMING_CHANGES_ICON=$'\uf0ab '
#P9K_VCS_OUTGOING_CHANGES_ICON=$'\uf0aa '
#
## VCS colours
#P9K_VCS_MODIFIED_BACKGROUND='blue'
#P9K_VCS_MODIFIED_FOREGROUND='black'
#P9K_VCS_UNTRACKED_BACKGROUND='green'
#P9K_VCS_UNTRACKED_FOREGROUND='black'
#P9K_VCS_CLEAN_BACKGROUND='green'
#P9K_VCS_CLEAN_FOREGROUND='black'
#
## VCS CONFIG
#P9K_VCS_SHOW_CHANGESET=false
#
## Status
#P9K_STATUS_OK_ICON=$'\uf164'
#P9K_STATUS_ERROR_ICON=$'\uf165'
#P9K_STATUS_ERROR_CR_ICON=$'\uf165'
#
## Battery
#P9K_BATTERY_LOW_FOREGROUND='red'
#P9K_BATTERY_CHARGING_FOREGROUND='blue'
#P9K_BATTERY_CHARGED_FOREGROUND='green'
#P9K_BATTERY_DISCONNECTED_FOREGROUND='blue'
#P9K_BATTERY_VERBOSE=true
#
## Programming languages
#P9K_RBENV_PROMPT_ALWAYS_SHOW=true
#P9K_GO_VERSION_PROMPT_ALWAYS_SHOW=true
#
## User with skull
#user_with_skull() {
#    echo -n "\ufb8a $(whoami)"
#}
#P9K_CUSTOM_USER="user_with_skull"
#
## Command auto-correction.
#ENABLE_CORRECTION="true"

source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source <(kubectl completion zsh)
