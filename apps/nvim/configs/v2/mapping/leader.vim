" Use space as the leader key
let mapleader = "\<Space>"

" Quickly save a file
nnoremap <Leader>ww :w<CR>

" Quickly write quit a file
nnoremap <Leader>wq :wq<CR>

" Quickly quit a file
nnoremap <Leader>qq :q<CR>

" Quickly force quit a file
nnoremap <Leader>qa :qa!<CR>

" Close current buffer and keep the window open
nnoremap <Leader>x :bp <BAR> sp <BAR> bn <BAR> bd!<CR>

" Open terminal in a horizontal split
nnoremap <Leader>` :split<CR>:term<CR>

" Easily start a search and replace for the word under cursor
nnoremap <Leader><F2> :%s/\<<C-r><C-w>\>/

" Open a vertical split
nnoremap <Leader><Bar> :vsplit<CR>

" Open a horizontal split
nnoremap <Leader>_ :split<CR>
