" RC of RA
"
"   ,-###--.___
"    _cc-._ 
"  .: (O)_.-````
"    |`.    ,-.
"    '  `-.__.'
"
let home_dir = expand('$HOME')
let curr_dir = home_dir . '/.config/nvim'
execute 'luafile ' . curr_dir . '/lua/project-config.lua'
