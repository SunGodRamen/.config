" Basic UI settings
set number          " Show line numbers
set relativenumber  " Relative line numbers
set showcmd         " Show incomplete commands
set cursorline      " Highlight the line the cursor is on

" Searching settings
set incsearch       " Incremental search
set ignorecase      " Case insensitive search
set smartcase       " Use case-sensitive search if expression contains a capital letter

" Indentation and tab settings
set tabstop=4       " A tab is four spaces
set softtabstop=4   " Number of spaces in tab when editing
set expandtab       " Expand tabs to spaces
set shiftwidth=4    " Indent/outdent by four spaces
set autoindent      " Auto indent new lines

" fuckin bell
set belloff=all

" Encoding and file formats
set encoding=utf-8

" Visual settings
set background=dark " Set background to dark (can also be light depending on your color scheme)

" Split windows
set splitbelow      " Horizontal splits will be below the current window
set splitright      " Vertical splits will be to the right of the current window

" Enable line wrapping
set nowrap

" Set the color scheme (you might need to install one or use a built-in one)
if (has("termguicolors"))
    set termguicolors
endif
colorscheme monokai-charcoal

" Highlight matching parenthesis
set showmatch

" Set the statusline
set laststatus=2    " Always show the status line

" Turn on the mouse
set mouse=a

" Remember info about open buffers when hidden
set hidden

" Set history length
set history=1000

" Enhance command line completion
set wildmenu
set wildmode=list:longest
