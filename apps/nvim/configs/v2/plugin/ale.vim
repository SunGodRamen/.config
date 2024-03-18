Plug 'w0rp/ale'

function! s:configure_plugin()
    " Enable linting on the fly
    let g:ale_lint_on_text_changed = 'always'
endfunction

" Append configuration function to the registry
call add(g:plugin_config_fns, function('s:configure_plugin'))
