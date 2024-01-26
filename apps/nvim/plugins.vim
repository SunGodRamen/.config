" Define whether to enable specific plugins
let g:enable_nerdtree = 0
let g:enable_telescope = 1
let g:enable_coc = 0
let g:enable_airline = 1
let g:enable_ale = 1
let g:enable_surround = 0
let g:enable_tree_sitter = 1
let g:enable_rainbow_parens = 1
let g:enable_commentary = 1
let g:enable_easymotion = 1
let g:enable_gitgutter = 1
let g:enable_deoplete = 1
let g:enable_rust = 1
let g:enable_vim_notify = 1
let g:enable_vim_rooter = 1

" Initialize VimPlug
execute "source " . g:vim_dir . "/vim-plug/plug.vim"
call plug#begin(g:vim_dir . '/vim-plug/autoload')

" Conditional plugin loading

" file system explorer for the Vim editor.
" It provides a tree structure to navigate the file system,
" allowing users to explore directories and open files for editing.
if g:enable_nerdtree
    Plug 'preservim/nerdtree'
endif

" Telescope is a highly extendable fuzzy finder over listsmakes
" searching and navigating files, buffers, tags, and more within
" Vim efficient and fast, with a customizable and powerful interface.
if g:enable_telescope
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }
endif

" CoC (Conquer of Completion) is an intellisense engine for Vim/Neovim.
" It provides an IDE-like experience by offering features like 
" auto-completion, code navigation, and linting.
if g:enable_coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
endif

" lightweight and customizable status line for Vim. It enhances 
" the Vim interface by displaying useful information such as 
" file status, git branch, and more,
if g:enable_airline
    Plug 'vim-airline/vim-airline'
endif

" ALE (Asynchronous Lint Engine) is a plugin for providing linting 
" (syntax checking and semantic errors) and fixers in Vim. 
" It does so asynchronously, allowing for a non-blocking editing experience. 
if g:enable_ale
    Plug 'w0rp/ale'
endif

" utility tool for editing parentheses, brackets, quotes, XML tags, 
" and more in paired surroundings. It provides shortcuts to easily 
" delete, change, and add such paired characters
if g:enable_surround
    Plug 'tpope/vim-surround'
endif

" parser generator tool and an incremental parsing library. In Vim, 
" it provides advanced syntax highlighting, code navigation, and more 
" features for programming languages.
if g:enable_tree_sitter
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
endif

" enhances code readability by color-coding matching pairs of 
" parentheses and other brackets. It is particularly useful in 
" languages with complex nested structures
if g:enable_rainbow_parens
    Plug 'HiPhish/rainbow-delimiters.nvim'
endif

" provides a simple and efficient way to comment out lines or blocks
" of code in Vim
if g:enable_commentary
    Plug 'tpope/vim-commentary'
endif

" fast and easy way to navigate within Vim documents. It allows for
" quickly jumping to a word, line, or character within the visible
" window using intuitive keystrokes
if g:enable_easymotion
    Plug 'easymotion/vim-easymotion'
endif

" shows a git diff in the 'gutter' (sign column) of Vim. It provides
" real-time tracking of added, modified, or removed lines in a file 
" being edited, relative to the Git repository.
if g:enable_gitgutter
    Plug 'airblade/vim-gitgutter'
endif

" asynchronous completion framework for Neovim/Vim. It provides fast 
" and extensible auto-completion support
if g:enable_deoplete
    Plug 'Shougo/deoplete.nvim'
endif

" Rust language support in Vim, offering file detection, syntax 
" highlighting, formatting
if g:enable_rust
    Plug 'rust-lang/rust.vim'
endif

" notification manager for Vim, displaying messages in a floating 
" window.
if g:enable_vim_notify
    Plug 'rcarriga/vim-notify'
endif

" Finds the current project root with hints.
if g:enable_vim_rooter
    Plug 'airblade/vim-rooter'
endif


call plug#end()
