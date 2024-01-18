" Function to set mapping to dvorak layout preferences
function! SetMapping_Dvorak()
    " Set new mappings
    nnoremap h h
    nnoremap t j
    nnoremap n k
    nnoremap s l

    " Navigation mappings
    nnoremap <Leader>r :bnext<CR>        " Go to the next buffer
    nnoremap <Leader>c :bprev<CR>        " Go to the previous buffer

    " Window navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-t> <C-w>j
    nnoremap <C-n> <C-w>k
    nnoremap <C-s> <C-w>l

    " Move lines up and down in visual mode
    vnoremap <C-t> :m '>+1<CR>gv=gv
    vnoremap <C-n> :m '<-2<CR>gv=gv

endfunction

function! UnsetMapping_Dvorak()
    " Clear existing mappings
    " Set new mappings
    nunmap h
    nunmap t
    nunmap n
    nunmap s

    " Navigation mappings
    nunmap <Leader>r
    nunmap <Leader>c

    " Window navigation
    nunmap <C-h>
    nunmap <C-t>
    nunmap <C-n>
    nunmap <C-s>

    " Move lines up and down in visual mode
    vunmap <C-t>
    vunmap <C-n>
endfunction
