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
execute 'source ' . curr_dir . '/base.vim'

" Source the Lua project configuration file
execute 'luafile ' . curr_dir . '/lua/project-config.lua'

" Initialize config state variables
let g:rust_config_active = 0
let g:ruby_config_active = 0
let g:fountain_config_active = 0

" Toggle Rust configuration
command! CFRust if g:rust_config_active == 0 | execute 'source ' . curr_dir . '/rust.vim' | let g:rust_config_active = 1 | else | echo "Rust config is already active" | endif

" Toggle Ruby configuration
command! CFRuby if g:ruby_config_active == 0 | execute 'source ' . curr_dir . '/ruby.vim' | let g:ruby_config_active = 1 | else | echo "Ruby config is already active" | endif

" Toggle Fountain configuration
command! CFFountain if g:fountain_config_active == 0 | execute 'source ' . curr_dir . '/fountain.vim' | let g:fountain_config_active = 1 | else | echo "Fountain config is already active" | endif
