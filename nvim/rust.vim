" Load the package manager (vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Rust development plugins
Plug 'rust-lang/rust.vim'
Plug 'simrat39/rust-tools.nvim'
Plug 'dense-analysis/ale'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'
Plug 'onsails/lspkind-nvim'

call plug#end()

" Enable syntax highlighting
syntax enable

" Enable file type detection and plugins
filetype plugin indent on

" Set the colorscheme
colorscheme gruvbox
set background=dark

" Enable line numbering
set number

" Set the tab width
set tabstop=4
set shiftwidth=4
set expandtab

" Enable auto-completion
set completeopt=menuone,noselect

" Configure LSP
lua << EOF
local lspconfig = require('lspconfig')
local cmp = require('cmp')
local lspkind = require('lspkind')

lspconfig.rust_analyzer.setup{
    capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
}

cmp.setup {
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    formatting = {
        format = lspkind.cmp_format({with_text = true, menu = ({
            buffer = "[Buffer]",
            nvim_lsp = "[LSP]",
            luasnip = "[LuaSnip]",
            path = "[Path]",
        })})
    },
    sources = {
        { name = 'buffer' },
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'path' },
    },
}

EOF

" Configure rust-tools
lua << EOF
require('rust-tools').setup({})
EOF

" Configure ALE linter
let g:ale_linters = {
\   'rust': ['rls', 'cargo'],
\}
let g:ale_fixers = {
\   'rust': ['rustfmt'],
\}
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
