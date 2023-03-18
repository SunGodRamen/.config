" Load the package manager (vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Fountain screenplay plugins
Plug 'vim-scripts/Fountain.vim'
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-litecorrect'
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-lexical'

call plug#end()

" Enable syntax highlighting
syntax enable

" Enable file type detection and plugins
filetype plugin indent on

" Set the colorscheme
colorscheme gruvbox
set background=dark

" Enable line numbering
set number

" Set the tab width
set tabstop=4
set shiftwidth=4
set expandtab

" Enable wrap and line break
set wrap
set linebreak
set showbreak=↳

" Configure Pencil for Fountain
autocmd FileType fountain call pencil#init()

" Configure litecorrect
autocmd FileType fountain call litecorrect#init()

" Configure Vim-lexical
autocmd FileType fountain call lexical#init()

" Configure Vim-wordy
autocmd FileType fountain call wordy#init()

" Set up custom key mappings for easier navigation
nmap <buffer> <silent> <leader>w :Wordy<CR>
nmap <buffer> <silent> <leader>l :LitecorrectToggle<CR>
