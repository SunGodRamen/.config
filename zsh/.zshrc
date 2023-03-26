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

export PATH=$HOME/bin:/usr/local/bin:$PATH
eval "$(/opt/homebrew/bin/brew shellenv)"

export ZSH="$HOME/.oh-my-zsh"
ZSH_CUSTOM=$HOME/.config/omz-custom

#     update mode
zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 14   
# zstyle ':omz:update' mode disabled
#     command correction
ENABLE_CORRECTION="true"
#     command hyphen mode
HYPHEN_INSENSITIVE="true"
#     waiting dots*temp (black, red, green, yellow, blue, magenta, cyan and white)
COMPLETION_WAITING_DOTS="%F{white}===%f"
HIST_STAMPS="dd.mm.yyyy"

plugins=(
    git
    zsh-autosuggestions
    thefuck
)

source $ZSH/oh-my-zsh.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

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


