" Define whether to enable specific plugins
let g:enable_nerdtree = 1
let g:enable_coc = 1
let g:enable_airline = 1
let g:enable_ale = 1
let g:enable_surround = 1
let g:enable_commentary = 1
let g:enable_easymotion = 1
let g:enable_gitgutter = 1
let g:enable_deoplete = 1

" Initialize VimPlug
source ~/.config/nvim/vim-plug/plug.vim
call plug#begin('~/.config/nvim/vim-plug/autoload')

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

call plug#end()


" ============================
" Coc.nvim Configurations
" ============================
if exists('g:enable_coc') && g:enable_coc
    " Example configuration for Python support
    " nmap <leader>c <Plug>(coc-some-function-for-python)

    " There are many other configurations and extensions for coc.nvim, so refer to its documentation for more.
endif

" ============================
" vim-airline Configurations
" ============================
if exists('g:enable_airline') && g:enable_airline
    " Enable powerline fonts
    let g:airline_powerline_fonts = 1

    " Set a theme
    let g:airline_theme = 'dark'
endif

" ============================
" ALE Configurations
" ============================
if exists('g:enable_ale') && g:enable_ale
    " Enable linting on the fly
    let g:ale_lint_on_text_changed = 'always'
endif

" ============================
" NERDTree Configurations
" ============================
if exists('g:enable_nerdtree') && g:enable_nerdtree
    " Toggle the NERDTree plugin
    nnoremap <Leader>t :NERDTreeToggle<CR>
endif