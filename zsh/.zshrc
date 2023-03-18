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


# Update the color scheme
ZSH_THEME="agnoster"
export LS_COLORS="di=38;5;65:ln=38;5;11:so=38;5;196:pi=38;5;196:ex=38;5;10:bd=38;5;12:cd=38;5;14:su=38;5;9:sg=38;5;13:tw=38;5;10:ow=38;5;10:"

# Prompt
PROMPT='%{$fg_bold[green]%}%n %{$fg[cyan]%}%c $(git_prompt_info)%{$fg_bold[red]%}$ %{$reset_color%}'

# Aliases
alias ls='ls -aG'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias rust-dev="docker run -it -v $(pwd):/app rust-dev"
export GOOGLE_APPLICATION_CREDENTIALS="/Users/AVONSTU1/Data/autovoice-egp9-970fca853356.json"
