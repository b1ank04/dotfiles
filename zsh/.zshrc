# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 1

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git macos brew zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

fastfetch

#Aliases
alias zed="/Applications/Zed.app/Contents/MacOS/cli" # Zed text editor
alias brewdump="brew bundle dump --file=~/.dotfiles/Brewfile --force && echo 'Brewfile has been updated'" # Update Brewdile dump
alias local-cli="/Users/markshmarov/projects/egym/egym-cli/bin/egym-cli" # Alias for local-built egym-cli
alias update-kitty="curl -L https://sw.kovidgoyal.net/kitty/installer.sh | sh /dev/stdin" # Updates Kitty terminal
alias gac='f() {
    if [ "$2" = "-m" ]; then
        git add "$1" && git commit -m "$3"
    else
        echo "Usage: gac <file> -m \"commit message\""
    fi
}; f' # Git add and commit function

################# GO SETUP #################

# Set GOPRIVATE to allow private repositories
export GOPRIVATE="github.com/egym"

# Set GOROOT to the Homebrew installation path
export GOROOT=/opt/homebrew/opt/go/libexec

# Set GOPATH to your Go workspace
export GOPATH=$HOME/go

# Set GOBIN to the bin directory inside GOPATH
export GOBIN=$GOPATH/bin

# Add GOROOT and GOPATH to your PATH
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

################################################

############## NodeJS SETUP ################

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

################################################


export GPG_TTY=$(tty) # Fix for GPG error
