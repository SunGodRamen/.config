"  functions
function! OpenNetrwVertical()
  let g:netrw_winsize = 20
  Vexplore
endfunction

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

" Leader-e opens a netrw window to the left with a size of 15 columns
nnoremap <leader>e :call OpenNetrwVertical()<CR>
