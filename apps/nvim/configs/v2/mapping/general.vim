
" Yank from the cursor to the end of the line (makes Y consistent with C and D)
nnoremap Y y$

" Easier paste (avoids replacing register)
vnoremap p "_dP

" Remove highlight after search
nnoremap <Esc><Esc> :noh<CR>