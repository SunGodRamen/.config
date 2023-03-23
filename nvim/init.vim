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
let vim_dir = expand('$HOME') . '/.config/nvim/vim'
let lua_dir = expand('$HOME') . '/.config/nvim/lua'

" Source the base configuration file
execute 'source ' . vim_dir . '/base.vim'
" Source the plugin configs 
execute 'source ' . vim_dir . '/plugin/plugin.vim'

" Source the vim project configuration file
execute 'source ' . vim_dir . '/project-config.vim'
" Source the Lua project configuration file
execute 'luafile ' . lua_dir . '/project-config.lua'
