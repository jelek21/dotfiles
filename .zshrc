#----------------------------------------||-----------------------------------#
#          _      _      _    ___  __    ||                                   #
#         | |    | |    | |  |__ \/_ |   || .zshrc file, this should be       #
#         | | ___| | ___| | __  ) || |   || contained inside:                 #
#     _   | |/ _ \ |/ _ \ |/ / / / | |   || $HOME                             #
#    | |__| |  __/ |  __/   < / /_ | |   ||                                   #
#     \____/ \___|_|\___|_|\_\____||_|   ||                                   #
#________________________________________||___________________________________#

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:/usr/sbin:$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin:$PATH

# Display for wsl2
export DISPLAY=$(grep -oP "(?<=nameserver ).+" /etc/resolv.conf):0

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load 
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Remove Username from prompt in agnoster
DEFAULT_USER=jerome

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="false"

# Disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="false"

# Automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# How often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# If pasting URLs and other text is messed up turn to true.
DISABLE_MAGIC_FUNCTIONS=false

# Colors in ls.
DISABLE_LS_COLORS="false"

# Auto-setting terminal title.
DISABLE_AUTO_TITLE="false"

# Command auto-correction.
ENABLE_CORRECTION="false"

# Display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="false"

# Do not register some commands in history
HISTORY_IGNORE="(ls|la|l|cd|pwd|exit)"

# Command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.config/zsh/custom

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    adb
    alias-finder
    autojump
    battery
    colored-man-pages
    colorize
    command-not-found
    extract
    fzf
    git
    gitfast
    gnu-utils
    history-substring-search
    jsontools
    man
    node
    npm
    pip
    sudo
    svn-fast-info
    systemd
    vscode
    web-search
    z
    zsh-autosuggestions
    zsh-completions
    zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh
autoload -U compinit && compinit

# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# ZGEN
source "${HOME}/.zgen/zgen.zsh"
# End ZGEN

# Launch genie bottle
if [[ ! -v INSIDE_GENIE  ]]; then
    read "yn? * Not inside the genie bottle; enter it? "
    echo

    if [[ $yn == "y"  ]]; then
        echo "Starting genie:"
        exec /usr/bin/genie -s
    fi
fi

source /home/jerome/.config/broot/launcher/bash/br
