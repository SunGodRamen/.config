function! SourceProjectInit()
  let project_init_path = expand("%:p:h") . "/.nvim/init.vim"

  if filereadable(project_init_path)
    execute "source " . project_init_path
  endif
endfunction

call SourceProjectInit()

