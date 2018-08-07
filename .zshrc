# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# time that oh-my-zsh is loaded.
ZSH_THEME="kphoen"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias node=nodejs
alias l='ls -la'

alias emulator="${HOME}/Android/Sdk/tools/emulator"
# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git yarn docker gradle kubectl docker-compose pep8 pip python history history-substring-search nanoc ssh-agent zaw zsh-syntax-highlighting django vagrant)

source $ZSH/oh-my-zsh.sh

# History
bindkey '^R' zaw-history
zstyle ':filter-select:highlight' matched fg=green
zstyle ':filter-select' max-lines 3
zstyle ':filter-select' case-insensitive yes # enable case-insensitive 
zstyle ':filter-select' extended-search yes # see below


# User configuration
export WORKON_HOME=~/.local/virtualenvs
source /home/bert/.local/bin/virtualenvwrapper.sh

export PATH=$PATH:"/usr/local/bin:/usr/local/sbin:/home/bert/.local/bin:/usr/sbin:/usr/bin:/bin:/sbin:/usr/local/go/bin:/home/bert/.cargo/bin:/opt/kotlin-native/bin"

#AndroidDev PATH 

export PATH=${PATH}:~/Android/Sdk/tools 
export PATH=${PATH}:~/Android/Sdk/platform-tools 
export PATH=${PATH}:~/Android/Sdk/tools/bin 

# Oracle Stuff
export ORACLE_HOME=/usr/lib/oracle/12.1/client64
export PATH=$PATH:$ORACLE_HOME/bin

# Go
export GOPATH=/home/bert/Development/playAround/go-workspace

NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
# unset MANPATH # delete if you already modified MANPATH elsewhere in your
# config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export CUPS_USER='BROBBERE'
export JAVA_HOME=/home/bert/Java/SDK/jdk1.8.0_144
export ANDROID_HOME=/home/bert/Android/Sdk

# Powerline
#
function powerline_precmd() {
    PS1="$(powerline-shell --shell zsh $?)"
}

function install_powerline_precmd() {
      for s in "${precmd_functions[@]}"; do
          if [ "$s" = "powerline_precmd" ]; then
            return
          fi
      done
      precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi
