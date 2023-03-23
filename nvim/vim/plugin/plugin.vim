"-------------------------------
" Set up directory variables
let home_dir = expand('$HOME')
let plugin_dir = home_dir . '/.config/nvim/vim/plugin'

" Source the  configuration file
"execute 'source ' . plugin_dir . '/.vim'


" Source the fugitive configuration file
execute 'source ' . plugin_dir . '/fugitive.vim'

