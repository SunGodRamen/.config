export CONFIG=$HOME/.config

# Neovim
export ENABLE_NEOVIM=true
if [ "$ENABLE_NEOVIM" = true ]; then
    export EDITOR='nvim'
    alias v='nvim'
fi

# bash
export ENABLE_BASH=false
if [ "$ENABLE_BASH" = true ]; then
    source $CONFIG/bash/bashrc
fi

# zsh
export ENABLE_ZSH=true
if [ "$ENABLE_ZSH" = true ]; then
    source $CONFIG/zsh/zshrc
fi

# oh-my-zsh
export ENABLE_OH_MY_ZSH=true
if [ "$ENABLE_OH_MY_ZSH" = true ]; then
    source $CONFIG/oh-my-zsh/oh-my-zshrc
fi

# SDKMAN
export ENABLE_SDKMAN=true
if [ "$ENABLE_SDKMAN" = true ]; then
    export SDKMAN_DIR="$HOME/.sdkman"
    [[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
fi
