Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

function! s:configure_plugin()
lua <<EOF
    require'nvim-treesitter.configs'.setup {
        ensure_installed = { "c", "lua", "rust" },
        highlight = {
            enable = true,
        },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = "gnn",
                node_incremental = "grn",
                scope_incremental = "grc",
                node_decremental = "grm",
            },
        },
        indent = {
            enable = true
        },
    }
EOF
endfunction

" Append configuration function to the registry
call add(g:plugin_config_fns, function('s:configure_plugin'))