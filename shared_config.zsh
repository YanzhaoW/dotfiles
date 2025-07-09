export EDITOR='nvim'
plugins=(git zsh-syntax-highlighting zsh-autosuggestions clipboard web-search)

source $ZSH/oh-my-zsh.sh

#keybindings
bindkey '^[[Z' autosuggest-accept

unsetopt autopushd
unsetopt pushdignoredups

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

if [[ -z $ZDOTDIR ]]; then
    alias zshconfig="nvim $HOME/.zshrc"
else
    alias zshconfig="nvim $ZDOTDIR/.zshrc"
fi
alias nvimconfig="nvim $HOME/.config/nvim/init.lua"
alias tmuxconfig="nvim $HOME/.config/tmux/tmux.conf"

function resetenv(){
    export DISPLAY="`tmux show-env | sed -n 's/^DISPLAY=//p'`"
}

function send(){
    local desfile="$HOME/.buffer_files/"
    if [ -z "$(ls -A ${desfile})" ]; then
    else
        echo "folder is not empty. cleaning all files..."
        rm -rf ${desfile}/*
    fi
    if (( $# >0 ))
    then
        for i
        do
            rsync -av $i ${desfile}
        done
    fi
}

# CMake options:
export CMAKE_GENERATOR=Ninja
export CMAKE_EXPORT_COMPILE_COMMANDS=ON

export PATH
typeset -U path
