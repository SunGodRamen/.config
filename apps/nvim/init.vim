" init.vim
let g:config_dir = expand("~/.config/apps/nvim")
set runtimepath^=~/.config/apps/nvim

" Plugin settings
execute "source " . g:config_dir . "/plugins.vim"
execute "source " . g:config_dir . "/plugin-mappings.vim"

" General settings
execute "source " . g:config_dir . "/general.vim"

" Mappings
execute "source " . g:config_dir . "/mappings.vim"