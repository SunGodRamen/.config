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

" ============================
" Easymotion Configurations
" ============================
if exists('g:enable_easymotion') && g:enable_easymotion
    " Leader key twice activates easymotion
    nmap <leader><leader> <Plug>(easymotion-prefix)
endif