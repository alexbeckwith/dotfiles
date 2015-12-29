# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME=bullet-train

# CASE_SENSITIVE="true"

HYPHEN_INSENSITIVE="true"

# DISABLE_AUTO_UPDATE="true"

# export UPDATE_ZSH_DAYS=13

# DISABLE_LS_COLORS="true"

# DISABLE_AUTO_TITLE="true"

ENABLE_CORRECTION="true"

# COMPLETION_WAITING_DOTS="true"

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(git sublime)

# User configuration

export PATH="$PATH:/usr/local/bin:$HOME/.rvm/gems/ruby-2.2.1/bin:$HOME/.rvm/gems/ruby-2.2.1@global/bin:$HOME/.rvm/rubies/ruby-2.2.1/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$HOME/pear/bin:$HOME/.rvm/bin:$HOME/bin' >> ~/dotfiles/zshrc"

source $ZSH/oh-my-zsh.sh

# export LANG=en_US.UTF-8

# export SSH_KEY_PATH="~/.ssh/dsa_id"

alias zshconfig="subl ~/dotfiles/zshrc"
alias ohmyzsh="subl ~/dotfiles/oh-my-zsh"
alias vup="vagrant up"
alias vdown="vagrant halt"
alias vref="vagrant reload"
alias netrem="networksetup -switchtolocation \"Remote\""
alias netdef="networksetup -switchtolocation \"Office\""
alias gsp="git smart-pull"
alias pf="sudo pfctl -ef /etc/pf.conf"
alias ghome="git checkout team/flw && git smart-pull"
