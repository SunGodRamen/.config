" init.vim
let s:vim_dir_path = "~/.config/apps/nvim"

" used to abbreviate vim dir around vim config scripts
let g:vim_dir = expand(s:vim_dir_path)
" add custom vim dir to runtime path
let &runtimepath = g:vim_dir . ',' . &runtimepath

" Plugin configuration
execute "source " . g:vim_dir . "/plugins.vim"

" Configuration variables
execute "source " . g:vim_dir . "/config/init.vim"

" Mappings
execute "source " . g:vim_dir . "/mappings/init.vim"
