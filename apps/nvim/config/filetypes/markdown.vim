iabbrev <buffer> td - [ ]



nnoremap <silent> <buffer> <leader>x :call ToggleCheckbox()<CR>

function! ToggleCheckbox()
    " Save the current cursor position
    let l:save_cursor = getpos(".")

    " Check if the line has a checked checkbox '[x]'
    if getline('.') =~ '^\s*-\s\[x\]'
        " Find the position of '['
        let l:bracket_pos = match(getline('.'), '\[')

        " Go to the position right after '[' and replace 'x' with a space
        execute 'normal! '.l:bracket_pos."|lli  \e`[xlx"

    " Check if the line has an empty checkbox '[]'
    elseif getline('.') =~ '^\s*-\s\[\s\]'
        " Find the position of '['
        let l:bracket_pos = match(getline('.'), '\[')

        " Go to the position right after '[' and insert 'x'
        execute 'normal! '.l:bracket_pos. "|lli x\e`[x`]lx"
   endif

    " Restore the cursor position
    call setpos('.', l:save_cursor)
endfunction
