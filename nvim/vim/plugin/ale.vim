" Plugin: ALE

let g:ale_lint_on_save = 1
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_sign_info = 'ℹ'
let g:ale_linters = {
  \ 'python': ['pylint', 'flake8'],
  \ 'javascript': ['eslint'],
  \ 'ruby': ['rubocop'],
  \ 'rust': ['rustc', 'cargo'],
  \ 'lua': ['luacheck'],
  \ 'lisp': ['sbcl', 'ccl'],
  \ 'c': ['gcc'],
  \ 'java': ['javac','mvn', 'compile'],
  \ 'fountain': ['afterwriting'],
  \ 'json': ['jsonlint'],
  \ 'react': ['eslint', 'flow'],
  \ }
let g:ale_fixers = {
  \ '*': ['remove_trailing_lines', 'trim_whitespace'],
  \ 'python': ['black'],
  \   'java': ['mvn', 'spotless:apply'],
  \ }

" Set key mappings
map <Leader>l :ALEToggle<CR>
map <Leader>n :ALENext<CR>
map <Leader>p :ALEPrevious<CR>

let g:ale_java_maven_command = 'mvn -B -DskipTests=true'

" Autocommands to set ALE for specific filetypes
autocmd BufEnter *.rs :let b:ale_linters = ['rustc', 'cargo']
autocmd BufEnter *.rb :let b:ale_linters = ['rubocop']
autocmd BufEnter *.lua :let b:ale_linters = ['luacheck']
autocmd BufEnter *.lisp :let b:ale_linters = ['sbcl', 'ccl']
autocmd BufEnter *.c :let b:ale_linters = ['gcc']
autocmd BufEnter *.java :let b:ale_linters = ['javac']
autocmd BufEnter *.fountain :let b:ale_linters = ['afterwriting']
autocmd BufEnter *.json :let b:ale_linters = ['jsonlint']
autocmd BufEnter *.jsx,*.js :let b:ale_linters = ['eslint']
autocmd BufEnter *.jsx,*.js :let b:ale_fixers = ['eslint', 'prettier']


" Use Ale for syntax checking and code formatting
augroup AleSpringJava
  autocmd!
  autocmd FileType java let b:ale_linters = ['java']
  autocmd FileType java let b:ale_fixers = ['java']
augroup END
