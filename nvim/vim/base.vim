" -------------------
" Remaps and shortcuts
" -------------------
" maps the leader key to spacebar
let mapleader = "\<Space>"

" maps the leader key followed by 'w' to write the current buffer to file.
nnoremap <leader>w :w<CR>

"maps the leader key followed by 'q' to quit Vim.
nnoremap <leader>q :q<CR>

"maps the leader key followed by 'h' to open the Vim help.
nnoremap <leader>? :help<CR>

"maps the leader key followed by another leader key to switch to the previous buffer.
nnoremap <leader><leader> <C-^>

"map the Ctrl key plus the h, j, k, and l keys, respectively, to move to the left, down, up, and right split windows.
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

"maps the leader key followed by '/' to clear the search highlighting.
nnoremap <leader>/ :nohlsearch<CR>

"swap two lines by specifying line numbers
"function! SwapLines(line1, line2) abort
"    if a:line1 == a:line2
"        echo "The line numbers are the same. No swapping needed."
"        return
"    endif
"
"    let l:temp line = getline(a:line1)
"    call setline(a:line1, getline(a:line2))
"    call setline(a:line2, l:temp line)
"endfunction

"command! -noargs=2 Swap call
"SwapLines(<f-args>)

" -------------------
" Source native configuration files
" -------------------
" Set up directory variables
let vim_dir = expand('$HOME') . '/.config/nvim/vim'
" Source the base configuration file
execute 'source ' . vim_dir . '/netrw.vim'
" Source the base configuration file
execute 'source ' . vim_dir . '/register_window.vim'


" -------------------
" General preferences
" -------------------
"Sets the encoding to UTF-8 for proper handling of non-ASCII characters.
set encoding=utf-8
"Sets the 'hidden' option to keep unsaved changes when switching buffers.
set hidden
"Sets 'nowrap' to disable automatic wrapping of long lines.
set nowrap
"Configures the backspace key to be able to delete characters in insert mode that were inserted during auto-indentation, at the end of the line or at the start of the line.
set backspace=indent,eol,start
"Sets 'expandtab' to convert tab characters to spaces.
set expandtab
"Sets 'shiftwidth' and 'softtabstop' to 4 spaces for indentation.
set shiftwidth=4
set softtabstop=4
"Sets 'smartindent' to automatically adjust indentation levels.
set smartindent
"Sets 'autoindent' to maintain indentation of new lines based on the previous line.
set autoindent
"Sets 'number' to display line numbers.
set number
"Sets 'cursorline' to highlight the current line.
set cursorline
"Sets 'showmatch' to highlight matching parentheses, brackets, and braces.
set showmatch
"Sets 'hlsearch' and 'incsearch' to enable highlighting and incremental searching during a search.
set hlsearch
set incsearch
"Sets 'ignorecase' and 'smartcase' to ignore case during a search unless an uppercase character is used.
set ignorecase
set smartcase
"Sets 'wildmenu' and 'wildmode' to enable a better command-line completion experience.
set wildmenu
set wildmode=list:longest
"Sets 'autoread' to automatically reload files that have been changed outside of Vim.
set autoread
"Sets 'laststatus' to 2 to always display the status line.
set laststatus=2
"Sets 'cmdheight' to 1 to avoid overwriting the command line with error messages.
set cmdheight=1
"Sets 'shortmess' to 'c' to suppress some messages.
set shortmess+=c
"Sets 'updatetime' to 300 milliseconds to decrease the delay for Vim to detect changes in files.
set updatetime=300
"Sets 'signcolumn' to 'yes' to always display the sign column.
set signcolumn=no
"Sets 'splitright' and 'splitbelow' to open new split windows on the right and below the current window, respectively.
set splitright
set splitbelow

