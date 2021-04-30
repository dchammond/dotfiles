# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="agnoster"
ZSH_THEME=""

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
 COMPLETION_WAITING_DOTS="true"

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
plugins=(git history history-substring-search)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:"$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit

PURE_PROMPT_SYMBOL='%(?.%F{green}.%F{red})>%f '
PURE_PROMPT_VICMD_SYMBOL='%(?.%F{green}.%F{red})<%f '

prompt pure
PROMPT='%(1j.[%j] .)${PURE_PROMPT_SYMBOL}'

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

# if [ "$TMUX" = "" ]; then tmux; fi

# test -e ~/.iterm2_shell_integration.zsh \
#     && source ~/.iterm2_shell_integration.zsh

# My aliases
alias cd..='cd ..'

test -e ~/.bin \
    && export PATH=$PATH:~/.bin

test -e ~/.cargo \
    && export PATH=$PATH:~/.cargo/bin \
    && export CARGO_HOME=~/.cargo/

export PATH=$PATH:~/.local/bin

test -e /opt/Xilinx/Vivado/latest \
    && source /opt/Xilinx/Vivado/latest/settings64.sh

command -v rustup > /dev/null \
    && alias rup='rustup update && cargo install-update -a'

alias jobs='jobs -l'
alias gdeletelocal='git branch -D'
alias gdeleteremote='git push origin --delete'
alias gbranchlocal='git checkout -b'
alias gbranchremote='git push -u origin'

command -v pip2 > /dev/null \
    && alias pip3up="pip2 list --format=freeze --outdated | cut -d'=' -f1 | xargs pip2 install --user --upgrade"

command -v pip3 > /dev/null \
    && alias pip3up="pip3 list --format=freeze --outdated | cut -d'=' -f1 | xargs pip3 install --user --upgrade"

command -v pip > /dev/null \
    && alias pipup="pip list --format=freeze --outdated | cut -d'=' -f1 | xargs pip install --user --upgrade"

command -v fuck > /dev/null \
    && eval "$(thefuck --alias)"

command -v /usr/local/bin/ctags > /dev/null \
    && alias ctags="/usr/local/bin/ctags"
if [[ "$TERM" == tmux* ]] || [[ "$TERM" == screen* ]]
then
    export TERM=tmux-256color
else
    export TERM=xterm-256color
fi

export LANG=en_US.UTF-8
export LC_CTYPE=$LANG

export EDITOR="/usr/bin/vim"
test -e /usr/local/bin/vim \
    && export EDITOR="/usr/local/bin/vim"

export SHELL="/usr/bin/zsh"
test -e /usr/local/bin/vim \
    && export SHELL="/usr/local/bin/zsh"

export DEFAULT_USER=dillon

export LANG=en_US.UTF-8

test -e /usr/bin/firefox \
    && export BROWSER=firefox

alias replace_hooks="rm .git/hooks/* && ln -s ~/.vim/hooks/* .git/hooks && .git/hooks/ctags"

export FFF_CD_FILE=~/.fff_d
export FFF_TRASH=/tmp
f() { fff "$@"; cd "$(cat ~/.fff_d)"; }

alias rg="rg --no-ignore"

alias l="exa -l --group-directories-first --group"
alias la="exa -al --group-directories-first --group"
alias ll="exa -l --group-directories-first -T --level=2"

return 0;
