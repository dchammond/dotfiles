# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# HOMEBREW options

# HOMEBREW github API token
export HOMEBREW_GITHUB_API_TOKEN=fce5d7272cac16d3436948d70ab5b5783a3cbabd

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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
plugins=(git ruby golang django scala gem history history-substring-search terminalapp brew nanoc)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt/go/libexec/bin"
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

. /usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# My aliases
alias brews='brew list -1'
alias buball='brew upgrade; brew cleanup; brew doctor'
alias cd..='cd ..'
alias rup='rustup self update && rustup update && rustup run nightly cargo install-update -a'
alias jobs='jobs -l'
alias gdeletelocal='git branch -D'
alias gdeleteremote='git push origin --delete'
alias gbranchlocal='git checkout -b'
alias gbranchremote='git push -u origin'
alias buses='brew uses --installed --recursive --include-build --include-optional'
alias pip2up="pip2 list --format=legacy --outdated | cut -d' ' -f1 | xargs pip2 install --upgrade"
alias pip3up="pip3 list --format=legacy --outdated | cut -d' ' -f1 | xargs pip3 install --upgrade"
alias j="just"
export PATH="/Users/Dillon/.cargo/bin:/usr/local/sbin:$PATH"
export RUST_SRC_PATH="/Users/Dillon/.rustup/toolchains/stable-x86_64-apple-darwin/lib/rustlib/src/rust/src"
eval "$(thefuck --alias)"
export TERM=xterm-256color
export OPENSSL_INCLUDE_DIR=/usr/local/opt/openssl/include 
export DEP_OPENSSL_INCLUDE=/usr/local/opt/openssl/include
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export LIBRARY_PATH="$LIBRARY_PATH:/usr/local/lib"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:/opt/X11/lib/pkgconfig"
export CARGO_HOME="/Users/Dillon/.cargo/"
export PATH="$PATH:/Users/Dillon"
export PATH="$HOME/opt/cross/bin:$PATH"
export PATH="$PATH:/usr/local/opt"
export EDITOR="/usr/local/bin/vim"
export SHELL="/usr/local/bin/zsh"
export PATH="$PATH:/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin"
export AF_PATH="/usr/local"
export LD_LIBRARY_PATH="$AF_PATH/lib:$LD_LIBRARY_PATH"
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"
