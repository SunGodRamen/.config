" Define the plugin directory (assuming 'nvim_path' is analogous to your Neovim configuration path)
let s:plugin_dir = g:config_dir . "/plugin"

" Define default plugin configurations
let g:default_plugin_config = {
            \ 'vim-airline': 1,
            \ 'ale': 0,
            \ 'rainbow-delimiters': 1,
            \ 'treesitter': 1
            \ }

" Merge default config with overrides (if any)
if exists('g:plugin_config')
    for key in keys(g:default_plugin_config)
        if !has_key(g:plugin_config, key)
            let g:plugin_config[key] = g:default_plugin_config[key]
        endif
    endfor
else
    let g:plugin_config = g:default_plugin_config
endif

" Initialize an empty list to hold configuration functions
let g:plugin_config_fns = []

" Initialize VimPlug
execute "source " . g:vim_dir . "/vim-plug/plug.vim"
" Start Vim-plug setup
call plug#begin(g:vim_dir . '/vim-plug/autoload')

" Iterate over the plugins and source their configurations
for [plugin, shouldRequire] in items(g:plugin_config)
    if shouldRequire
        execute "source " . s:plugin_dir . "/" . plugin . ".vim"
    endif
endfor

" End Vim-plug setup
call plug#end()

" Execute all configuration functions
for Fn in g:plugin_config_fns
    call Fn()
endfor
