" Use space as the leader key
let mapleader = "\<Space>"

" Navigation mappings
nnoremap <Leader>j :cnext<CR>        " Go to next error/warning (common with linting plugins)
nnoremap <Leader>k :cprev<CR>        " Go to previous error/warning
nnoremap <Leader>n :bnext<CR>        " Go to the next buffer
nnoremap <Leader>p :bprev<CR>        " Go to the previous buffer

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quickly save a file with <Leader>s
nnoremap <Leader>s :w<CR>

" Easily start a search and replace for the word under cursor
nnoremap <Leader>r :%s/\<<C-r><C-w>\>/

" Open a vertical split
nnoremap <Leader>v :vsplit<CR>

" Open a horizontal split
nnoremap <Leader>h :split<CR>

" Move lines up and down in visual mode
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Close current buffer and keep the window open
nnoremap <Leader>c :bp <BAR> sp <BAR> bn <BAR> bd!<CR>

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
nnoremap <Leader>x :split<CR>:term<CR>

" Open terminal in a vertical split
nnoremap <Leader>z :vsplit<CR>:term<CR>

" ... and more based on your personal needs!

