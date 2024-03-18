" init.vim
let s:vim_dir_path = "~/.config/apps/nvim"
let s:config_path = s:vim_dir_path . "/configs/v1"

" used to abbreviate vim dir around vim config scripts
let g:vim_dir = expand(s:vim_dir_path)
let g:config_dir = expand(s:config_path)
" add custom vim dir to runtime path
let &runtimepath = g:config_dir . ',' . &runtimepath

" Plugin configuration
execute "source " . g:config_dir . "/plugins.vim"

" Configuration variables
execute "source " . g:config_dir . "/config/init.vim"

" Mappings
execute "source " . g:config_dir . "/mappings/init.vim"
