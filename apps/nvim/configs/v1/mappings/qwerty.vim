" Function to set mapping to qwerty layout preferences
function! SetMapping_Qwerty()
    " Set new mappings
    " Window navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-j> <C-w>j
    nnoremap <C-k> <C-w>k
    nnoremap <C-l> <C-w>l

    " Move lines up and down in visual mode
    vnoremap J :m '>+1<CR>gv=gv
    vnoremap K :m '<-2<CR>gv=gv

endfunction

function! UnsetMapping_Qwerty()
    " Clear existing mappings
    " Window navigation
    nunmap <C-h>
    nunmap <C-j>
    nunmap <C-k>
    nunmap <C-l>

    " Move lines up and down in visual mode
    vunmap J
    vunmap K

endfunction
