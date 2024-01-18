" Function to get the highlight group and color under cursor
function! HighlightElementUnderCursor()
    let l:synID = synID(line('.'), col('.'), 1)
    let l:transID = synIDtrans(l:synID)
    let l:hlGroup = synIDattr(l:transID, 'name')

    " Get foreground color
    let l:fgColor = synIDattr(l:transID, 'fg#')
    if l:fgColor == ''
        let l:fgColor = 'None'
    endif

    " Optional: Get background color
    let l:bgColor = synIDattr(l:transID, 'bg#')
    if l:bgColor == ''
        let l:bgColor = 'None'
    endif

    " Optional: Include background color
    return l:hlGroup . ' (FG: ' . l:fgColor . ', BG: ' . l:bgColor . ')'
endfunction

if exists('g:enable_airline') && g:enable_airline
    " Update the airline section
    let g:airline_section_x = '%{HighlightElementUnderCursor()}'

    " Auto-command to update the highlight group in airline
    augroup UpdateHighlightGroup
        autocmd!
        autocmd CursorMoved,CursorMovedI * let g:airline_section_x = '%{HighlightElementUnderCursor()}'
    augroup END
endif
