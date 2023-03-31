#!usr/bin/env zsh
#                   ...-''''''-...
#              ..-''     ....     ''-.
#          ..-'   ..--'''    ''''-..  '.
#       .-'    ..'                  '.. '-.
#      ;    .-'                        '.  '-.
#      '-.-'           .----..           '-.  '-...
#                  .-''...... ''..          '-.    ''-........
#               .-'.-'';'    '... '-.          ''-...         ;
#             .' .'  .'        '.'-. '-.             ''''--'''
#         ..-' .'    .              '.  '-..
#       .' .-''      .          '     '-..  ''-..
#      '.. ''--.      .         '         '-.... ''--..
#         '''--.''-..  .      .'       .....---'       '''--..
#               '''-.;'''-..-'....--'''....--------------....'
#                   :     ........---''
#                   ;  ..:
#                  .-  :',;
#                .'    : '.;
#                 '.   :  ' .
#                  '.  :  ' '
#                   ;  :   ' '
#                    : :    ' '
#                    : :     ' '
#                    ; :      ' '.                       .''.
#                   :  :       '. '..                   :    ;
#                   :  :         ''. '..                '.   ;
#                    ; :            ''-.''-....          .  ;
#                    : :                ''---..'''''----'.-'
#                     '                        ''''''''''

# Environment check
if [[ "$(uname -o)" == "Android" ]]; then
    export TERMUX=true
else
    export TERMUX=false
fi

# Ascii Art (omitted)

# Set PATH
if [ "$TERMUX" = true ]; then
    export PATH=$HOME/bin:/usr/local/bin:$PREFIX/bin:$PATH
else
    export PATH=$HOME/bin:/usr/local/bin:$PATH
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM=$HOME/.config/omz-custom

# Update mode
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14

# Command correction
ENABLE_CORRECTION="true"

# Command hyphen mode
HYPHEN_INSENSITIVE="true"

# Waiting dots*temp (black, red, green, yellow, blue, magenta, cyan and white)
COMPLETION_WAITING_DOTS="%F{white}===%f"
HIST_STAMPS="dd.mm.yyyy"

plugins=(
    git
    zsh-autosuggestions
    thefuck
)

source $ZSH/oh-my-zsh.sh

if [ "$TERMUX" = false ]; then
    [ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
fi

# Prompt
PROMPT='%{$fg_bold[green]%}%D{%d/%m/%y} %D{%L:%M:%S}$(custom_git_prompt)%{$fg_bold[yellow]%}%B$(if [[ $PWD == $HOME ]]; then echo "\$HOME"; else echo "%c"; fi)%b%{$fg[white]%}/%{$fg_bold[red]%} $ %{$reset_color%}'

# Aliases
alias ls='ls -1aG'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias c='clear'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'


if [ "$TERMUX" = true ]; then
    clear; pwd; ls -1a;
fi
