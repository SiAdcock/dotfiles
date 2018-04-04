# Path to your oh-my-zsh installation.
export ZSH=/Users/simon_adcock/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="geoffgarside"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/Users/simon_adcock/.nvm/versions/node/v4.4.4/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/MacGPG2/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gs="git status"
alias gl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias g="git"
alias ll="ls -al"
alias creds="feria --access s3-read cmsFronts && feria frontend"
alias churn="git log --since='90 days ago' --pretty=format:'' --name-only | grep '[^\s]' | sort | uniq -c | sort -nr | head -10"
alias churn-js="git log --since='90 days ago' --pretty=format:'' --name-only | grep '.js$' | sort | uniq -c | sort -nr | head -10"

eval "$(thefuck --alias)"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"


# This will run `nvm use` everytime you change directory, if
#   1. an .nvmrc file is present
#   2. there is no .nvmrc but you're not using your default node

enter_directory(){
  if [ "$PWD" != "$PREV_PWD" ]; then
    PREV_PWD="$PWD";
    if [ -e ".nvmrc" ]; then
      nvm use;
    elif [[ $(nvm version) != $(nvm version default)  ]]; then
      echo "Reverting to nvm default version."
      nvm use default
    fi
  fi
}

chpwd_functions=(${chpwd_functions[@]} "enter_directory")

# added by travis gem
[ -f /Users/simon_adcock/.travis/travis.sh ] && source /Users/simon_adcock/.travis/travis.sh
export PATH="/Users/simon_adcock/workspace/feria/bin:$PATH"
alias presto="~/workspace/presto/presto --server presto.ophan.co.uk:8889 --catalog hive --schema clean"

export PATH="/Users/simon_adcock/workspace/feria/bin:$PATH"
export PATH="/Users/simon_adcock/workspace/feria/bin:$PATH"
export PATH="/Applications/Postgres.app/Contents/Versions/9.6/bin:$PATH"

export JAVA6_HOME="/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_91.jdk/Contents/Home"
export ANDROID_HOME="/Users/simon_adcock/Library/Android/sdk"
export GOPATH="$HOME/go"
