" Define whether to enable specific plugins
let g:enable_nerdtree = 1
let g:enable_coc = 0
let g:enable_airline = 1
let g:enable_ale = 1
let g:enable_surround = 1
let g:tree_sitter = 1
let g:enable_rainbow_parens = 1
let g:enable_commentary = 1
let g:enable_easymotion = 1
let g:enable_gitgutter = 1
let g:enable_deoplete = 1
let g:enable_rust = 1

" Initialize VimPlug
execute "source " . g:vim_dir . "/vim-plug/plug.vim"
call plug#begin(g:vim_dir . '/vim-plug/autoload')

" Conditional plugin loading
if g:enable_nerdtree
    Plug 'preservim/nerdtree'
endif

if g:enable_coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

if g:enable_airline
    Plug 'vim-airline/vim-airline'
endif

if g:enable_ale
    Plug 'w0rp/ale'
endif

if g:enable_surround
    Plug 'tpope/vim-surround'
endif

if g:tree_sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
endif

if g:enable_rainbow_parens
    Plug 'HiPhish/rainbow-delimiters.nvim'
endif

if g:enable_commentary
    Plug 'tpope/vim-commentary'
endif

if g:enable_easymotion
    Plug 'easymotion/vim-easymotion'
endif

if g:enable_gitgutter
    Plug 'airblade/vim-gitgutter'
endif

if g:enable_deoplete
    Plug 'Shougo/deoplete.nvim'
endif

if g:enable_rust
    Plug 'rust-lang/rust.vim'
endif

call plug#end()