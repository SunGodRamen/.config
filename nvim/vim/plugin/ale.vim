" Plugin: ALE

" Install ALE using vim-plug
call plug#begin('~/.vim/plugged')
Plug 'dense-analysis/ale'
call plug#end()

" Configure ALE
let g:ale_lint_on_save = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ℹ'
let g:ale_linters = {
  \ 'python': ['pylint', 'flake8'],
  \ 'javascript': ['eslint'],
  \ }
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['black'],
  \ }

" Set key mappings
map <Leader>l :ALEToggle<CR>
map <Leader>n :ALENext<CR>
map <Leader>p :ALEPrevious<CR>
