function SetMapping(new_layout)
    " exit if no args
    if !exists("a:new_layout") || a:new_layout == ""
        echo "no layout specified"
        return
    endif
    " default keylayout to empty string
    if !exists("g:key_layout")
        let g:key_layout = ""
    endif
    " Unset keymapping if keylayout is set
    if g:key_layout != ""
        let unset_keymap = "UnsetMapping_" . g:key_layout
        let unset_plugin_keymap = "UnsetPluginMapping_" . g:key_layout
        execute 'call ' unset_keymap . '()'
        execute 'call ' unset_plugin_keymap . '()'
    endif
    " Set keymapping in arguments
    let set_keymap = "SetMapping_" . a:new_layout
    let set_plugin_keymap = "SetPluginMapping_" . a:new_layout
    execute 'call ' set_keymap . '()'
    execute 'call ' set_plugin_keymap . '()'
    let g:key_layout = a:new_layout
endfunction
