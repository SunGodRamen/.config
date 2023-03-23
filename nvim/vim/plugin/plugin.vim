"-------------------------------
" Set up directory variables
let plugin_dir = expand('$HOME') . '/.config/nvim/vim/plugin'

" Install plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'dense-analysis/ale'
Plug 'justinmk/vim-sneak'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Source the fugitive configuration file
execute 'source ' . plugin_dir . '/fugitive.vim'

" Source the vim-sneak configuration file
execute 'source ' . plugin_dir . '/sneak.vim'

" Source the ale configuration file
execute 'source ' . plugin_dir . '/ale.vim'

" Source the airline configuration file
execute 'source ' . plugin_dir . '/airline.vim'

