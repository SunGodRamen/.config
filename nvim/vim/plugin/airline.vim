
" Enable powerline symbols if your font supports it
let g:airline_powerline_fonts = 1

" Customize the sections and separators
let g:airline_section_a = 'ⓐ %<%{mode()}'
let g:airline_section_b = 'ⓑ %f%m'
let g:airline_section_c = 'ⓒ %b %l:%c'
let g:airline_section_x = 'ⓧ %y'
let g:airline_section_y = 'ⓨ %p%%'

function! GitCommitMessage()
  let l:blame_output = system('git blame -L ' . line('.') . ',' . line('.') . ' -- ' . expand('%'))
  let l:commit_hash = matchstr(l:blame_output, '\v^[0-9a-f]{7,40}')
  let l:commit_message = system('git show -s --format=%s ' . l:commit_hash)
  return strpart(l:commit_message, 0, 30)
endfunction

let g:airline_section_z = "%{GitCommitMessage()} ⓩ"

let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'

" Choose a color theme
autocmd VimEnter * :AirlineTheme the_hunt

" Show or hide the status bar
let g:airline#extensions#tabline#enabled = 1

" Customize bufferline options
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = 'buf %s'
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_type = 1

" Enable the extension to show the current branch
let g:airline#extensions#branch#enabled = 1

" Enable the extension to show the current filetype
let g:airline#extensions#filetype#enabled = 1

" Enable the extension to show the undo branch
let g:airline#extensions#undotree#enabled = 1

" Enable the extension to show the whitespace
let g:airline#extensions#whitespace#enabled = 1

" Save and load the configuration with ':w' and ':source %'
