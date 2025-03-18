[[ -n $TMUX ]] && export TERM="xterm-256color"

export EDITOR='nvim'

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git zsh-syntax-highlighting zsh-autosuggestions clipboard web-search)
source $ZSH/oh-my-zsh.sh

unsetopt autopushd
unsetopt pushdignoredups
#keybindings
bindkey '^[[Z' autosuggest-accept


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

# CMake options:
export CMAKE_GENERATOR=Ninja

export PATH
typeset -U path
