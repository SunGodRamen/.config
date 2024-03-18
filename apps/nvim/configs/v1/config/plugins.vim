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

" Rainbow Parenthesis
if exists('g:enable_rainbow_parens') && g:enable_rainbow_parens
    let g:rainbow_delimiters = {
        \ 'strategy': {
            \ '': rainbow_delimiters#strategy.global,
        \ },
        \ 'query': {
            \ '': 'rainbow-delimiters',
            \ 'lua': 'rainbow-blocks',
        \ },
        \ 'priority': {
            \ '': 110,
            \ 'lua': 210,
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

if exists('g:enable_tree_sitter') && g:enable_tree_sitter
    execute "luafile " . g:config_dir . "/config/treesitter-config.lua"
endif
