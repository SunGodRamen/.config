execute "source " . g:vim_dir . "/config/chording.vim"

" Set up chord mappings when Vim enters
autocmd VimEnter * call s:SetupChordMappings()

function! s:SetupChordMappings()
    call ChordMapping('<C-k>', '<C-u>', 'MyFunctionForControlKU')
    call ChordMapping('<Leader>k', '<Leader>', 'MyFunctionForLeaderKU')
endfunction

function! MyFunctionForControlKU()
    echo "control ku"
endfunction
function! MyFunctionForLeaderKU()
    echo "leader ku"
endfunction