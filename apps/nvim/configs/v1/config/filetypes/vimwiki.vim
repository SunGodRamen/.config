iabbrev <buffer> td - [ ]

nnoremap <silent> <buffer> <leader>x :call ToggleCheckbox()<CR>

function! ToggleCheckbox()
    " Save the current cursor position
    let l:save_cursor = getpos(".")

    " Check if the line has an empty checkbox '[ ]'
    if getline('.') =~ '^\s*-\s\[\s\]'
        "Move to the beginning of the line
        normal! 0
        " Find the position of '['
        execute search('\[', 'c', line('.'))
        " insert 'x' after the bracket
        execute "normal! lllix\elx"

    " Check if the line has an occupied checkbox '[x]'
    elseif getline('.') =~ '^\s*-\s\[.\]'
        " Move to the beginning of the line
        normal! 0
        " Find the position of '['
        execute search('\[', 'c', line('.'))

        " add a space and remove the checkbox content 
        execute "normal! lllxi \e"

   endif

    " Restore the cursor position
    call setpos('.', l:save_cursor)
endfunction
