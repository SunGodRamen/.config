" The_Hunt: A custom color scheme for vim-airline

" Dark Chocolate
let s:dark_chocolate = ['#ffffff', '#411C00', 15, 235]
" Deep Red
let s:deep_red = ['#ffffff', '#6C1E1E', 15, 52]
" Deep Green
let s:deep_green = ['#ffffff', '#1E6C1E', 15, 22]
" Goldenrod
let s:goldenrod = ['#121212', '#DAA520', 233, 136]

let g:airline#themes#the_hunt#palette = {}

" Normal mode
let g:airline#themes#the_hunt#palette.normal = {
      \ 'airline_a': s:deep_green,
      \ 'airline_b': s:deep_red,
      \ 'airline_c': s:goldenrod,
      \ 'airline_x': s:goldenrod,
      \ 'airline_y': s:deep_green,
      \ 'airline_z': s:deep_red,
      \ }

" Insert mode
let g:airline#themes#the_hunt#palette.insert = {
      \ 'airline_a': s:goldenrod,
      \ 'airline_b': s:deep_red,
      \ 'airline_c': s:deep_green,
      \ 'airline_x': s:goldenrod,
      \ 'airline_y': s:deep_green,
      \ 'airline_z': s:deep_red,
      \ }

" Visual mode
let g:airline#themes#the_hunt#palette.visual = {
      \ 'airline_a': s:deep_red,
      \ 'airline_b': s:deep_green,
      \ 'airline_c': s:goldenrod,
      \ 'airline_x': s:goldenrod,
      \ 'airline_y': s:deep_green,
      \ 'airline_z': s:deep_red,
      \ }

" Replace mode
let g:airline#themes#the_hunt#palette.replace = {
      \ 'airline_a': s:deep_red,
      \ 'airline_b': s:goldenrod,
      \ 'airline_c': s:deep_green,
      \ 'airline_x': s:goldenrod,
      \ 'airline_y': s:deep_green,
      \ 'airline_z': s:deep_red,
      \ }

" Tabline (buffers section)
let g:airline#themes#the_hunt#palette.tabline = {
      \ 'airline_t': s:goldenrod,
      \ 'airline_t_active': s:deep_green,
      \ }
