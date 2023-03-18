" =========================
" Init.vim for Neovim (Unix)
" =========================

" -------------------
" General preferences
" -------------------
set encoding=utf-8
set hidden
set nowrap
set backspace=indent,eol,start
set expandtab
set shiftwidth=4
set softtabstop=4
set smartindent
set autoindent
set number
set relativenumber
set cursorline
set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
set wildmode=list:longest
set autoread
set laststatus=2
set cmdheight=1
set shortmess+=c
set updatetime=300
set signcolumn=yes
set splitright
set splitbelow

" -------------------
" Remaps and shortcuts
" -------------------
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>h :help<CR>
nnoremap <leader><leader> <C-^>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>/ :nohlsearch<CR>

" ----------------------------------------
" Vim-Plug - a minimalist package manager
" ----------------------------------------
call plug#begin('~/.config/nvim/plugged')

" fzf - a general-purpose command-line fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" fzf.vim provides convenient shortcuts for fuzzy file searching and navigation

" NERDTree - a tree explorer plugin for navigating the filesystem
Plug 'preservim/nerdtree'
" NERDTree provides a file explorer sidebar with powerful features

" vim-airline - a lightweight status/tabline plugin
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" vim-airline offers an attractive and informative status line and tab line

" ctrlp.vim - a full path fuzzy file, buffer, mru, tag, etc. finder
Plug 'ctrlpvim/ctrlp.vim'
" ctrlp.vim is a powerful fuzzy file finder with multiple search modes

" vim-gitgutter - a Vim plugin that shows a git diff in the gutter
Plug 'airblade/vim-gitgutter'
" vim-gitgutter displays git diff information in the sign column

" vim-surround - a plugin to deal with pairs of surroundings
Plug 'tpope/vim-surround'
" vim-surround provides mappings to easily manage pairs of surroundings like quotes, brackets, etc.

" taskwarrior.vim - a plugin to integrate TaskWarrior into Vim
Plug 'blindFS/taskwarrior.vim'
" taskwarrior.vim brings the power of TaskWarrior into your Vim environment

call plug#end()

" -------------------
" Plugin configurations
" -------------------
" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeMinimalUI = 1

" fzf.vim
let g:fzf_layout = { 'window': { 'width': 0.8, 'height': 0.6 } }
nnoremap <leader>f :Files<CR>
nnoremap <leader>b :Buffers<CR>

let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = 'node_modules|bower_components|vendor|.git|.svn|.hg|.DS_Store|.min.js|.min.css'

" vim-gitgutter
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '≠'
highlight DiffAdd cterm=bold ctermbg=none ctermfg=2 gui=none guifg=green
highlight DiffChange cterm=bold ctermbg=none ctermfg=3 gui=none guifg=yellow
highlight DiffDelete cterm=bold ctermbg=none ctermfg=1 gui=none guifg=red

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16_solarized'

" taskwarrior.vim
nnoremap <leader>tw :TW<CR>
let g:taskwarrior_extension = 1
let g:taskwarrior_summary = 1

" ----------------------
" Autocommands and hooks
" ----------------------
augroup general_autocmds
autocmd!
autocmd FileType python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd FileType html setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType css setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType json setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType yaml setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType markdown setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
autocmd BufReadPost * if line("'"") > 0 && line("'"") <= line("$") | exe "normal! g`"" | endif
augroup END

" -------------------
" Custom functions and commands
" -------------------
function! DeleteTrailingWS()
let save_cursor = getpos(".")
%s/\s+$//e
call setpos('.', save_cursor)
endfunction
command! WStrip call DeleteTrailingWS()
autocmd FileType * autocmd BufWritePre <buffer> :call DeleteTrailingWS()

" Clear search highlights with <leader><space>
" -------------------
" Language Server Protocol (LSP) configuration
" -------------------
" Installing the 'neovim' Python package is needed for LSP support
" Run: pip install neovim
" Uncomment the following lines if you wish to enable the built-in LSP client for Neovim
" lua << EOF
" require'lspconfig'.gopls.setup{
" on_attach = function(client, bufnr)
" local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
" buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
" end
" }
" EOF

" -------------------
" Color scheme
" -------------------
" Uncomment the following lines to set your preferred color scheme
" syntax on
" colorscheme solarized8_dark

" -------------------
" Additional settings
" -------------------

" Disable swap files
set noswapfile

" Enable mouse support
set mouse=a

" Set the clipboard to use the system clipboard
set clipboard+=unnamedplus

" Enable persistent undo history
set undodir=~/.config/nvim/undodir
set undofile

" -------------------
" Folding settings
" -------------------
" Set folding method to 'syntax'
set foldmethod=syntax
" Enable folding by default
set foldenable
" Set the default fold level
set foldlevelstart=1
" Don't show lines with only whitespace when folding
set foldminlines=1

" -------------------
" Autocompletion configuration
" -------------------
" Uncomment the following lines if you wish to use deoplete as autocompletion engine
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#sources = {}
" let g:deoplete#sources._ = ['buffer', 'file', 'path', 'tag']
" let g:deoplete#keyword_patterns = {}
" let g:deoplete#keyword_patterns._ = '\k+'

" -------------------
" Custom status line
" -------------------
" Uncomment the following lines if you wish to create a custom status line
" set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
" -------------------
" Filetype plugins
" -------------------
filetype plugin indent on

" -------------------
" Quickfix enhancements
" -------------------
" Open quickfix window automatically when there are errors
autocmd QuickFixCmdPost [^l]* cwindow
autocmd QuickFixCmdPost l* lwindow

" -------------------
" Leader key mappings
" -------------------
let mapleader = ","
let g:mapleader = ","

" -------------------
" Snippets support
" -------------------
" Uncomment the following lines if you wish to use UltiSnips for snippet support
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="vertical"

" -------------------
" Tagbar configuration
" -------------------
" Uncomment the following lines if you wish to use Tagbar for better code navigation
" Plug 'majutsushi/tagbar'
" nnoremap <leader>t :TagbarToggle<CR>
" let g:tagbar_autofocus = 1

" -------------------
" Commenting configuration
" -------------------
" Uncomment the following lines if you wish to use NERDCommenter for easy code commenting
" Plug 'preservim/nerdcommenter'
" let g:NERDSpaceDelims = 1
" let g:NERDCompactSexyComs = 1
" let g:NERDCreateDefaultMappings = 1
" let g:NERDDefaultAlign = 'left'
" let g:NERDCommentEmptyLines = 1
" let g:NERDTrimTrailingWhitespace = 1

" -------------------
" Matchit configuration
" -------------------
" Uncomment the following line to enable matchit for extended % matching
" runtime macros/matchit.vim

" -------------------
" Search enhancements
" -------------------
" Highlight search results as you type
set incsearch
" Show number of matches and current match position while searching
set showmatch

" -------------------
" Better buffer management
" -------------------
" Switch between buffers using bnext and bprevious
nnoremap <leader>bn :bnext<CR>
nnoremap <leader>bp :bprevious<CR>
" Close buffer without closing the window
nnoremap <leader>bd :bp|bd #<CR>

" -------------------
" Terminal support
" -------------------
" Open terminal in a new split
nnoremap <leader>te :split term://bash<CR>
nnoremap <leader>tv :vsplit term://bash<CR>

" -------------------
" Spell checking
" -------------------
" Enable spell checking for text and markdown files
autocmd FileType text,markdown setlocal spell
" Set default language for spell checking
set spelllang=en_us
" Toggle spell checking
nnoremap <leader>ss :setlocal spell!<CR>
" -------------------
" Autopair configuration
" -------------------
" Uncomment the following lines if you wish to use vim-autopairs for automatic closing of brackets, quotes, etc.
" Plug 'jiangmiao/auto-pairs'
" let g:AutoPairsFlyMode = 1
" let g:AutoPairsMultilineClose = 1

" -------------------
" IndentLine configuration
" -------------------
" Uncomment the following lines if you wish to use IndentLine for displaying indentation levels
" Plug 'Yggdroot/indentLine'
" let g:indentLine_char = '|'
" let g:indentLine_concealcursor = 'inc'
" let g:indentLine_conceallevel = 2
" let g:indentLine_showFirstIndentLevel = 1

" -------------------
" Gruvbox color scheme
" -------------------
" Uncomment the following lines if you wish to use the Gruvbox color scheme
" Plug 'morhetz/gruvbox'
" colorscheme gruvbox
" set background=dark
" let g:gruvbox_contrast_dark = 'medium'

" -------------------
" Asynchronous Lint Engine (ALE) configuration
" -------------------
" Uncomment the following lines if you wish to use ALE for linting and fixing your code
" Plug 'dense-analysis/ale'
" let g:ale_linters_explicit = 1
" let g:ale_completion_enabled = 1
" let g:ale_sign_error = '✖'
" let g:ale_sign_warning = '⚠'
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %code: %%s %severity%'

" -------------------
" Language-specific configuration
" -------------------
" Python
" Uncomment the following lines if you wish to use pylint for Python linting
" let g:ale_python_pylint_options = '--disable=all --enable=F,E,unreachable,duplicate-key,unnecessary-semicolon,global-variable-not-assigned,unused-variable,unused-wildcard-import,binary-op-exception,bad-format-string,anomalous-backslash-in-string,bad-open-mode'
" let g:ale_linters = {'python': ['pylint']}

" -------------------
" vim-test configuration
" -------------------
" Uncomment the following lines if you wish to use vim-test for running your tests
" Plug 'vim-test/vim-test'
" let test#strategy = "neovim"
" nnoremap <silent> <leader>tn :TestNearest<CR>
" nnoremap <silent> <leader>tf :TestFile<CR>
" nnoremap <silent> <leader>ts :TestSuite<CR>
" nnoremap <silent> <leader>tl :TestLast<CR>
" nnoremap <silent> <leader>tv :TestVisit<CR>

" -------------------
" Vimwiki configuration
" -------------------
" Uncomment the following lines if you wish to use Vimwiki for personal wiki and note-taking
" Plug 'vimwiki/vimwiki'
" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
" let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
" nnoremap <silent> <leader>ww :VimwikiIndex<CR>
" nnoremap <silent> <leader>wd :VimwikiDiaryIndex<CR>
" -------------------
" Rainbow parentheses configuration
" -------------------
" Uncomment the following lines if you wish to use rainbow parentheses for easier visual tracking
" Plug 'luochen1990/rainbow'
" let g:rainbow_active = 1
" let g:rainbow_conf = {
" \ 'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
" \ 'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta', 'lightred'],
" }

" -------------------
" FZF configuration
" -------------------
" Uncomment the following lines if you wish to use FZF for fuzzy file searching
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Plug 'junegunn/fzf.vim'
" let g:fzf_layout = { 'down': '~40%' }
" nnoremap <silent> <leader>ff :Files<CR>
" nnoremap <silent> <leader>fg :GFiles<CR>
" nnoremap <silent> <leader>fb :Buffers<CR>
" nnoremap <silent> <leader>ft :Tags<CR>

" -------------------
" Surround configuration
" -------------------
" Uncomment the following lines if you wish to use vim-surround for easy manipulation of surrounding characters
" Plug 'tpope/vim-surround'
" let surround_mappings_style = "surround"

" -------------------
" Emmet configuration
" -------------------
" Uncomment the following lines if you wish to use emmet-vim for easier HTML, CSS, and XML coding
" Plug 'mattn/emmet-vim'
" let g:user_emmet_leader_key = '<C-e>'

" -------------------
" vim-easymotion configuration
" -------------------
" Uncomment the following lines if you wish to use vim-easymotion for quick navigation
" Plug 'easymotion/vim-easymotion'
" nnoremap <leader><leader> <Plug>(easymotion-prefix)

" -------------------
" vim-startify configuration
" -------------------
" Uncomment the following lines if you wish to use vim-startify for a customizable start screen
" Plug 'mhinz/vim-startify'
" let g:startify_custom_header = [' _ _ _ _ ',
" \ ' __ | | __ | | | || | ___ _ __ ___ ',
" \ ' / | __/ _ | |/ -) | ' / -) _ ` _ \ ',
" \ ' _, |__,|_|___|_|||__, || ',
" \ '|/ |__/ ']
" let g:startify_session_autoload = 1
" let g:startify_session_delete_buffers = 1
" let g:startify_enable_special = 0

" -------------------
" vim-sneak configuration
" -------------------
" Uncomment the following lines if you wish to use vim-sneak for quick navigation
" Plug 'justinmk/vim-sneak'
" let g:sneak#label = 1
" let g:sneak#use_ic_scs = 1