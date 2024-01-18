" Coc.nvim
if exists('g:enable_coc') && g:enable_coc
endif

" vim-airline
if exists('g:enable_airline') && g:enable_airline
    " Enable powerline fonts
    let g:airline_powerline_fonts = 1

    " Set a theme
    let g:airline_theme = 'dark'
endif

" ALE
if exists('g:enable_ale') && g:enable_ale
    " Enable linting on the fly
    let g:ale_lint_on_text_changed = 'always'
endif

" NERDTree
if exists('g:enable_nerdtree') && g:enable_nerdtree
endif

" Easymotion
if exists('g:enable_easymotion') && g:enable_easymotion
endif