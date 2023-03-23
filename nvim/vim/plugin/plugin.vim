"-------------------------------
" Set up directory variables
let plugin_dir = expand('$HOME') . '/.config/nvim/vim/plugin'

" Source the fugitive configuration file
execute 'source ' . plugin_dir . '/fugitive.vim'

" Source the vim-sneak configuration file
execute 'source ' . plugin_dir . '/sneak.vim'

" Source the ale configuration file
execute 'source ' . plugin_dir . '/ale.vim'

