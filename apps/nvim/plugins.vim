" Define whether to enable specific plugins
let g:enable_nerdtree = 1
let g:enable_coc = 0
let g:enable_airline = 1
let g:enable_ale = 1
let g:enable_surround = 1
let g:enable_commentary = 1
let g:enable_easymotion = 1
let g:enable_gitgutter = 1
let g:enable_deoplete = 1
let g:enable_rust = 1
let g:enable_vimwiki = 1
let g:enable_tree_sitter = 1
let g:enable_rainbow_parens = 1

" disable termux incompatible plugins
let s:env_os = getenv('CURRENT_OS')
if exists('s:env_os') && s:env_os == "ANDROID"
    let g:enable_tree_sitter = 0
    let g:enable_rainbow_parens = 0 
endif

" Initialize VimPlug
execute "source " . g:vim_dir . "/vim-plug/plug.vim"
call plug#begin(g:vim_dir . '/vim-plug/autoload')

" Conditional plugin loading
if exists('g:enable_nerdtree') && g:enable_nerdtree
    Plug 'preservim/nerdtree'
endif

if exists('g:enable_coc') && g:enable_coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

if exists('g:enable_airline') && g:enable_airline
    Plug 'vim-airline/vim-airline'
endif

if exists('g:enable_ale') && g:enable_ale
    Plug 'w0rp/ale'
endif

if exists('g:enable_surround') && g:enable_surround
    Plug 'tpope/vim-surround'
endif

if exists('g:enable_tree_sitter') && g:enable_tree_sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
endif

if exists('g:enable_rainbow_parens') && g:enable_rainbow_parens
    Plug 'HiPhish/rainbow-delimiters.nvim'
endif

if exists('g:enable_commentary') && g:enable_commentary
    Plug 'tpope/vim-commentary'
endif

if exists('g:enable_easymotion') && g:enable_easymotion
    Plug 'easymotion/vim-easymotion'
endif

if exists('g:enable_gitgutter') && g:enable_gitgutter
    Plug 'airblade/vim-gitgutter'
endif

if exists('g:enable_deoplete') && g:enable_deoplete
    Plug 'Shougo/deoplete.nvim'
endif

if exists('g:enable_rust') && g:enable_rust
    Plug 'rust-lang/rust.vim'
endif

if exists('g:enable_vimwiki') && g:enable_vimwiki
    Plug 'vimwiki/vimwiki'
    set nocompatible
    filetype plugin on
    syntax on
endif

call plug#end()
