let s:env_dir = g:config_dir . '/env'

" Get the device name from environment variables
let device_name = getenv('DEVICE_NAME')

" Conditional loading based on the device name
if device_name != ''
    let device_config = s:env_dir . '/device/' . device_name . '.vim'
    " Assuming device configurations are in separate Vim script files within a directory named 'config/device/'
    execute 'source' device_config
endif

" Define global keys
let g:left = 'h'
let g:down = 'j'
let g:up = 'k'
let g:right = 'l'

" Assuming there's an environment variable for the keyboard layout
let keyboard_layout = getenv('KEYBOARD_LAYOUT')

if keyboard_layout != ''
    let keyboard_layout_config = s:env_dir . '/layout/' . keyboard_layout . '.vim'
    " Assuming keyboard layout configurations are in separate Vim script files within a directory named 'config/layout/'
    silent! execute 'source' keyboard_layout_config
endif
    
function! SourceFileTypeConfig()
    " Get the current buffer's filetype
    let filetype = &filetype
    if filetype != ''
        let fileConfig = g:config_dir . '/config/filetype/' . filetype . '.vim'
        " Filetype configurations are in separate Vim script files within 'config/filetype/{filetype}.vim'
        " Try to source the file, and handle errors silently
        silent! execute 'source' fileConfig
    endif
endfunction

" Set up an autocommand to run the function when the FileType event is triggered
augroup FileTypeConfigLoader
    autocmd!
    autocmd FileType * call SourceFileTypeConfig()
augroup END
