" Plugin: vim-sneak

" Set the colorscheme for sneak
let g:sneak#label = 1
let g:sneak#use_ic_scs = 1
highlight SneakLabel guibg=Yellow

" Use "s" to trigger sneak in normal mode
map s <Plug>Sneak_s

" Use "S" to trigger sneak in operator-pending mode
map S <Plug>Sneak_S
