" Plugin: fugitive

" Install fugitive using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
call plug#end()

" Define any related mappings here
nmap <leader>gs :Gstatus<CR>
nmap <leader>gc :Gcommit<CR>
nmap <leader>gd :Gdiff<CR>

