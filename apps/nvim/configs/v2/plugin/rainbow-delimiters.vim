Plug 'HiPhish/rainbow-delimiters.nvim'

function! s:configure_plugin()
    let g:rainbow_delimiters = {
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
endfunction

" Append configuration function to the registry
call add(g:plugin_config_fns, function('s:configure_plugin'))