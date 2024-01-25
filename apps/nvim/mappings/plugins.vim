
" Easymotion
if exists('g:enable_easymotion') && g:enable_easymotion
    " Leader key twice activates easymotion
    nmap <Leader><Leader> <Plug>(easymotion-prefix)
endif

"--------- Layout specific mappings ---------------

function SetPluginMapping_Dvorak()
    " NERDTree
    if exists('g:enable_nerdtree') && g:enable_nerdtree
        " Toggle the NERDTree plugin
        nnoremap <Leader>e :NERDTreeToggle<CR>
    endif
endfunction

function UnsetPluginMapping_Dvorak()
    " NERDTree
    if exists('g:enable_nerdtree') && g:enable_nerdtree
        " Toggle the NERDTree plugin
        nunmap <Leader>e
    endif
endfunction

function SetPluginMapping_Qwerty()
    " NERDTree
    if exists('g:enable_nerdtree') && g:enable_nerdtree
        " Toggle the NERDTree plugin
        nnoremap <Leader>t :NERDTreeToggle<CR>
    endif
endfunction

function UnsetPluginMapping_Qwerty()
    " NERDTree
    if exists('g:enable_nerdtree') && g:enable_nerdtree
        " Toggle the NERDTree plugin
        nunmap <Leader>t
    endif
endfunction
