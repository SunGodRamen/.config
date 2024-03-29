require'nvim-treesitter.configs'.setup {
    ensure_installed = { "c", "lua", "rust" },
    highlight = {
        enable = true,              -- false will disable the whole extension
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