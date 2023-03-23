" Fugitive configuration
" Use shorter command for Git
  command! -nargs=* G :Git <args>

  " Custom key mappings
  noremap <leader>gs :Git<CR>
  noremap <leader>gd :Gdiffsplit<CR>
  noremap <leader>gc :Git commit<CR>
  noremap <leader>gp :Git push<CR>
  noremap <leader>gl :Gclog<CR>
  noremap <leader>gb :Git blame<CR>
  
  " Autocommands
  autocmd User FugitiveBlob,FugitiveStageBlob call FugitiveBlobOverrides()
  
  function! FugitiveBlobOverrides()
    " Your customizations for FugitiveBlob and FugitiveStageBlob
  endfunction
  
  " Deprecated commands warning
  command! -nargs=* Gremove echo "Use :GRemove instead"
  command! -nargs=* Gdelete echo "Use :GDelete instead"
  command! -nargs=* Gmove echo "Use :GMove instead"
  command! -nargs=* Grename echo "Use :GRename instead"
  command! -nargs=* Gbrowse echo "Use :GBrowse instead"
  command! -nargs=* Gdiff echo "Use :Gdiffsplit instead"
  command! -nargs=* Gsdiff echo "Use :Ghdiffsplit instead"
  command! -nargs=* Gvdiff echo "Use :Gvdiffsplit or :vert Gdiffsplit instead"
  " Add similar warnings for other deprecated commands
  