" RC of RA
"
"   ,-###--.___
"    _cc-._ 
"  .: (O)_.-````
"    |`.    ,-.
"    '  `-.__.'
"
"-------------------------------
" Set up directory variables
let home_dir = expand('$HOME')
let curr_dir = home_dir . '/.config/nvim'

" Source the base configuration file
execute 'source ' . curr_dir . '/vim/base.vim'
" Source the plugin configs 
execute 'source ' . curr_dir . '/vim/plugin/plugin.vim'

" Source the vim project configuration file
execute 'source ' . curr_dir . '/vim/project-config.vim'
" Source the Lua project configuration file
execute 'luafile ' . curr_dir . '/lua/project-config.lua'
