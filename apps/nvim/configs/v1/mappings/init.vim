
" General mappings
execute "source " . g:config_dir . "/mappings/general.vim"
" Plugin specific mappings
execute "source " . g:config_dir . "/mappings/plugins.vim"

" Layout specific mappings
execute "source " . g:config_dir . "/mappings/dvorak.vim"
execute "source " . g:config_dir . "/mappings/qwerty.vim"
execute "source " . g:config_dir . "/mappings/set-mapping.vim"

command! SetDvorak call SetMapping("Dvorak")
command! SetQwerty call SetMapping("Qwerty")

" Get keylayout from environment variable
let s:env_key_layout = getenv('VIM_KEYMAP')
" Default to Dvorak
if !exists(s:env_key_layout)
    let s:env_key_layout = "Dvorak"
endif
" Set initial mapping
call SetMapping(s:env_key_layout)
