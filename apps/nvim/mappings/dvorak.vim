" Function to set mapping to dvorak layout preferences
function! SetMapping_Dvorak()
    " Set new mappings
    nnoremap h h
    nnoremap t j
    nnoremap n k
    nnoremap s l

    " Navigation mappings
    nnoremap <Leader><PageUp> :bnext<CR>        " Go to the next buffer
    nnoremap <Leader><PageDown> :bprev<CR>        " Go to the previous buffer

    " Window navigation
    nnoremap <C-h> <C-w>h
    nnoremap <C-t> <C-w>j
    nnoremap <C-n> <C-w>k
    nnoremap <C-s> <C-w>l

    " Move lines up and down in visual mode
    vnoremap <A-t> :m '>+1<CR>gv=gv
    vnoremap <A-n> :m '<-2<CR>gv=gv

endfunction

function! UnsetMapping_Dvorak()
    " Clear existing mappings
    nunmap h
    nunmap t
    nunmap n
    nunmap s
    nunmap <Leader><PageUp>
    nunmap <Leader><PageDown>
    nunmap <C-h>
    nunmap <C-t>
    nunmap <C-n>
    nunmap <C-s>
    vnoremap <A-t>
    vnoremap <A-n>
endfunction
