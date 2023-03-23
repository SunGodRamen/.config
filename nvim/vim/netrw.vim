" Set up netrw configuration

" Custom function to open netrw in a vertical split
function! OpenNetrw()
  let g:netrw_preview = 0
  let g:netrw_browse_split = 4 " open files in tabs
  let g:netrw_winsize = 18 " adjust the netrw window size as desired (percentage)
  let g:curwin = bufnr("%")
  Vexplore
endfunction

" Map <leader>e to open the netrw panel
nnoremap <leader>e :call OpenNetrw()<CR>

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
