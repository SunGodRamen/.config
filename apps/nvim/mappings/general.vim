" Use space as the leader key
let mapleader = "\<Space>"

" Quickly save a file
nnoremap <Leader>w :w<CR>

" Quickly quit a file
nnoremap <Leader>q :q<CR>

" Find in file 
nnoremap <Leader>f /

" Visual mode mapping: Search for the highlighted text
xnoremap <Leader>f y/<C-r>"<CR>

" Close current buffer and keep the window open
nnoremap <Leader>x :bp <BAR> sp <BAR> bn <BAR> bd!<CR>

" Use <Tab> and <Shift-Tab> to switch between open tabs
nnoremap <Tab> :tabnext<CR>
nnoremap <S-Tab> :tabprev<CR>

" Yank from the cursor to the end of the line (makes Y consistent with C and D)
nnoremap Y y$

" Easier paste (avoids replacing register)
vnoremap p "_dP

" Remove highlight after search
nnoremap <Esc><Esc> :noh<CR>

" Open terminal in a horizontal split
nnoremap <Leader>` :split<CR>:term<CR>

" Easily start a search and replace for the word under cursor
nnoremap <Leader><F2> :%s/\<<C-r><C-w>\>/

" Open a vertical split
nnoremap <Leader><Bar> :vsplit<CR>

" Open a horizontal split
nnoremap <Leader>_ :split<CR>

" New line without insert
nnoremap <Leader>o o<Esc>
nnoremap <Leader>O O<Esc>

" Copy selected to clipboard
vnoremap yc :"+y<CR>
