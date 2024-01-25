" NERDTree
if exists('g:enable_nerdtree') && g:enable_nerdtree
    let NERDTreeShowHidden=1
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
    let g:ale_sign_column_always = 1
    let g:ale_fix_on_save = 1
    let g:ale_sign_error = '✗'
    let g:ale_sign_warning = ''
    let g:ale_fixers = {
        \ '*': ['remove_trailing_lines', 'trim_whitespace'],
        \ 'rust': ['rustfmt'],
  \ }
endif

" Rainbow Parenthesis
if exists('g:enable_rainbow_parens') && g:enable_rainbow_parens
    let g:rainbow_delimiters = {
        \ 'strategy': {
            \ '': rainbow_delimiters#strategy.global,
        \ },
        \ 'query': {
            \ '': 'rainbow-delimiters',
        \ },
        \ 'highlight': [
            \ 'RainbowDelimiterYellow',
            \ 'RainbowDelimiterViolet',
            \ 'RainbowDelimiterBlue',
            \ 'RainbowDelimiterYellow',
            \ 'RainbowDelimiterViolet',
            \ 'RainbowDelimiterBlue',
            \ 'RainbowDelimiterYellow',
        \ ],
    \ }

endif

if exists('g:tree_sitter') && g:tree_sitter
    execute "luafile " . g:vim_dir . "/config/treesitter-config.lua"
endif

