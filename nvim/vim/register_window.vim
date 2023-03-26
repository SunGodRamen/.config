
"Toggle register panel
function! ToggleShowRegisters()
    if exists("t:register_bufnr") && bufexists(t:register_bufnr) && bufwinnr(t:register_bufnr) != -1
        let original_winnr = winnr()
        let register_winnr = bufwinnr(t:register_bufnr)
        execute register_winnr . 'wincmd w'
        close
        execute original_winnr . 'wincmd w'
    else
        call ShowRegisters()
        let t:register_bufnr = bufnr('%')
    endif
endfunction

"Show Registers in right vertical split
function! ShowRegisters()
    let registers = 'abcdefghijklmnopqrstuvwxyz0123456789/-"'
    let register_content = []

    for r in split(registers, '\zs')
        call add(register_content, r . ':' .getreg(r))
    endfor

    vnew
    setlocal buftype=nofile
    setlocal bufhidden=wipe
    setlocal noswapfile
    setlocal nowrap
    setlocal nofoldenable
    setlocal nobuflisted
    setlocal nonumber
    setlocal norelativenumber
    setlocal filetype=registers
    setlocal winwidth=20

    call setline(1, register_content)
    normal! gg
    wincmd p
endfunction

command! ShowRegisters call ShowRegisters()
noremap <Leader>r :call ToggleShowRegisters()<CR>

