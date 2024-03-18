" init.vim
let s:vim_dir_path = "~/.config/apps/nvim"
let s:config_path = s:vim_dir_path . "/configs/v2"

" used to abbreviate vim directory around vim config scripts
let g:vim_dir = expand(s:vim_dir_path)
let g:config_dir = expand(s:config_path)
" add custom vim config directory to runtime path
let &runtimepath = g:config_dir . ',' . &runtimepath

" source envrionment specific config
execute "source " . g:config_dir . "/env.vim"
" source plugin config
execute "source " . g:config_dir . "/plugin.vim"
" source base config
execute "source " . g:config_dir . "/config.vim"

" source mapping configs
let mappings = glob(g:config_dir . '/mapping' . '/*.vim', 1, 1)
for script in mappings
    execute 'source' script
endfor
