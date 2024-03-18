Plug 'vim-airline/vim-airline'

function! s:configure_plugin()
    " vim-airline specific configurations
    Plug 'vim-airline/vim-airline'
    let g:airline_powerline_fonts = 1
    let g:airline_theme = 'dark'
endfunction

" Append configuration function to the registry
call add(g:plugin_config_fns, function('s:configure_plugin'))