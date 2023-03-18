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
# Path to oh-my-zsh installation.
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
COMPLETION_WAITING_DOTS="%F{magenta}𓈖 𓈖 𓈖%f"

HIST_STAMPS="dd.mm.yyyy"

PROMPT='%{$fg[yellow]%}[%D{%f/%m/%y} %D{%L:%M:%S}]𓂀'$PROMPT

##  Include-Plugins ....................................................................... <<--Include-Plugins-<<

plugins=(
    git
    zsh-autosuggestions
)

#     the f*ck plugin
eval $(thefuck --alias)

source $ZSH/oh-my-zsh.sh

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Prompt
PROMPT='%{$fg_bold[green]%}%n %{$fg[cyan]%}%c $(git_prompt_info)%{$fg_bold[red]%}$ %{$reset_color%}'

# Aliases
alias ls='ls -aG'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias c='clear'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'



alias rust-dev="docker run -it -v $(pwd):/app rust-dev"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/AVONSTU1/Data/autovoice-egp9-970fca853356.json"
