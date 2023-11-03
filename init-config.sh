export CONFIG=$HOME/.config

# configurable apps
export ENABLE_NEOVIM=true
export ENABLE_BASH=false
export ENABLE_ZSH=true
export ENABLE_OH_MY_ZSH=true
export ENABLE_SDKMAN=true

# initializations

source $CONFIG/os-config

# Neovim
if [ "$ENABLE_NEOVIM" = true ]; then
    export EDITOR='nvim'
    alias v='nvim'
fi

# bash
if [ "$ENABLE_BASH" = true ]; then
    source $CONFIG/bash/bashrc
fi

# zsh
if [ "$ENABLE_ZSH" = true ]; then
    source $CONFIG/zsh/zshrc
fi

# oh-my-zsh
if [ "$ENABLE_OH_MY_ZSH" = true ]; then
    source $CONFIG/oh-my-zsh/oh-my-zshrc
fi

# SDKMAN
if [ "$ENABLE_SDKMAN" = true ]; then
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
    source $CONFIG/alias/sdkman
fi
