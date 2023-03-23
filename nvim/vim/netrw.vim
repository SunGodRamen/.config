" Set netrw as the default file explorer
let g:netrw_liststyle = 3

" Enable netrw's tree listing style
let g:netrw_list_hide = '.*,.*/\.git/.*,*/\node_modules/.*'

" Set the width of the netrw window
let g:netrw_winsize = 25

" Set hidden files to be shown by default
let g:netrw_list_hide = netrw_gitignore#Hide()

" Enable syntax highlighting for netrw
let g:netrw_highlight_syntax = 1

" Enable faster loading of netrw
let g:netrw_fastbrowse = 0

" Set up mappings for easier navigation
augroup NetrwMappings
  autocmd!

  " Map the <Enter> key to the NetrwEnter() function.
  " If the current file is modifiable, open it normally.
  " Otherwise, enter the directory or execute the netrw command.
  autocmd FileType netrw nmap <buffer> <silent> <Enter> :call NetrwEnter()<CR>

  " Map the <C-l> key (Control + l) to the NetrwRefresh() function.
  " Refresh the netrw file listing.
  autocmd FileType netrw nmap <buffer> <silent> <C-l> :call NetrwRefresh()<CR>

  " Map the <C-h> key (Control + h) to the NetrwUpDir() function.
  " Navigate to the parent directory.
  autocmd FileType netrw nmap <buffer> <silent> <C-h> :call NetrwUpDir()<CR>
augroup END

" Leader-e opens a netrw window to the left with a size of 15 columns
nnoremap <leader>e :call OpenNetrwVertical()<CR>


" Custom functions for the mappings
function! OpenNetrwVertical()
  let g:netrw_winsize = 18
  Vexplore
endfunction

function! NetrwEnter()
  let netrw_cmd = "NetrwBrowse"
  if &modifiable
    execute "normal! \<CR>"
  else
    execute netrw_cmd." ".expand("%:p")
  endif
endfunction

function! NetrwRefresh()
  normal! R
endfunction

function! NetrwUpDir()
  normal! ^
endfunction
