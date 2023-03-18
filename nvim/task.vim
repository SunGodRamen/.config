" Taskwarrior configuration
set runtimepath^=~/.vim/bundle/vim-taskwarrior

" Enable syntax highlighting for Taskwarrior
filetype plugin on
syntax enable

" Map keys for Taskwarrior commands
map <leader>t :Task<Space>
map <leader>tw :TaskWeek<CR>
map <leader>tm :TaskMonth<CR>
map <leader>tn :TaskNext<CR>
map <leader>tl :TaskList<CR>
map <leader>ta :TaskAdd<Space>

" Use the Taskwiki plugin for a TUI interface to Taskwarrior
Plug 'tools-life/taskwiki'

" Use the TaskWikiCalendar plugin for a calendar view of tasks
Plug 'uucidl/taskwiki-calendar.vim'

" Use the TaskWikiGantt plugin for a Gantt chart view of tasks
Plug 'uucidl/taskwiki-gantt.vim'

" Use the TaskwikiTags plugin for a tag cloud view of tasks
Plug 'tools-life/taskwiki-tags'

" Customize colors for Taskwiki
let g:taskwiki_color_overrides = {
  \ 'Priority A': 'fg=red',
  \ 'Priority B': 'fg=yellow',
  \ 'Priority C': 'fg=green',
  \ 'Priority D': 'fg=blue',
  \ 'Priority E': 'fg=magenta',
  \}

" Enable syntax highlighting for Taskwiki
let g:taskwiki_syntax_enable = 1

" Use the Fugitive plugin to display Git commits associated with tasks
Plug 'tpope/vim-fugitive'

" Use the TaskwarriorTags plugin for tag management
Plug 'blindFS/vim-taskwarrior-tags'

" Set default tags for new tasks
let g:taskwarrior_default_tags = ['+inbox']

" Set the location of the Taskwarrior data file
let g:taskwiki_data_location = '~/Dropbox/taskwiki/'

" Enable Taskwiki integration with Tmux
let g:taskwiki_tmux_session_name = 'taskwiki'

" Set key bindings for Taskwiki
map <Leader>twk :TaskWiki<CR>
map <Leader>tnk :TaskWikiNext<CR>
map <Leader>tpk :TaskWikiPrev<CR>
map <Leader>tgk :TaskWikiGoto<CR>
map <Leader>tck :TaskWikiCalendar<CR>
map <Leader>tdk :TaskWikiDone<CR>
map <Leader>tmk :TaskWikiModify<CR>
map <Leader>tak :TaskWikiAdd<CR>
