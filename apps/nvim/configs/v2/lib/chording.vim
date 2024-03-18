" Initialize global variable for chord mode and timer
let g:chord_mode = ''
let g:chord_timer = 0
let g:chord_timeout = 1000

function! ChordMapping(firstChord, secondChord, functionName)
    " Normalize the firstChord for internal comparison and storage
    let normalizedFirstChord = NormalizeChord(a:firstChord)
    " Create the mapping for the first chord to enter chord mode
    execute 'nnoremap ' . a:firstChord . ' :call EnterChordMode("' . normalizedFirstChord . '")<CR>'
    " Create the mapping for the second chord to trigger the action
    execute 'nnoremap <expr> ' . a:secondChord . ' g:chord_mode == "' . normalizedFirstChord . '" ? ":call ' . a:functionName . '()<CR>" : "' . a:secondChord . '"'
endfunction

" Enter chord mode, start a timer for timeout, and set the initial chord key
function! EnterChordMode(chord_key)
    let g:chord_mode = a:chord_key
    " Cancel any existing timer to avoid conflicts
    if g:chord_timer != 0
        call timer_stop(g:chord_timer)
    endif
    " Start a new timer for configured timeout
    let g:chord_timer = timer_start(g:chord_timeout, 'ExitChordMode')
endfunction

" Function to be called on timeout to exit chord mode
function! ExitChordMode(timer_id)
    let g:chord_mode = ''
    let g:chord_timer = 0
endfunction

" Handle the action based on the initial chord and the action key
function! HandleChordModeAction(functionName)
    if g:chord_mode != ''
        if exists('*'.functionName)
            call timer_stop(g:chord_timer)
            let g:chord_mode = ''
            let g:chord_timer = 0
            execute 'call ' . functionName . '()'
        endif
    endif
endfunction

function! NormalizeChord(chord)
    let chord = substitute(a:chord, '<C-\(\w\)>', 'C\1-', 'g')
    let chord = substitute(chord, '<S-\(\w\)>', 'S\1-', 'g')
    let chord = substitute(chord, '<A-\(\w\)>', 'A\1-', 'g')
    let chord = substitute(chord, '<[Ll]eader>', 'Leader-', 'g')
    return chord
endfunction
