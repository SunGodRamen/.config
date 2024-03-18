augroup on_filetype_open 
    autocmd!
    autocmd FileType markdown execute "source " . g:config_dir . "/config/filetypes/markdown.vim" 
    autocmd FileType vimwiki  execute "source " . g:config_dir . "/config/filetypes/markdown.vim" 
    autocmd FileType vimwiki  execute "source " . g:config_dir . "/config/filetypes/vimwiki.vim" 
augroup END

