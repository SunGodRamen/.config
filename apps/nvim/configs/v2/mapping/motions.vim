" Set new mappings
execute 'nnoremap ' . g:left  . ' h'
execute 'nnoremap ' . g:down  . ' j'
execute 'nnoremap ' . g:up    . ' k'
execute 'nnoremap ' . g:right . ' l'

" Window navigation
execute 'nnoremap <C-' . g:left  . '> <C-w>h'
execute 'nnoremap <C-' . g:down  . '> <C-w>j'
execute 'nnoremap <C-' . g:up    . '> <C-w>k'
execute 'nnoremap <C-' . g:right . '> <C-w>l'

" Move lines up and down in visual mode
execute 'vnoremap <C-' . g:down . "> :m '>+1<CR>gv=gv"
execute 'vnoremap <C-' . g:up   . "> :m '<-2<CR>gv=gv"