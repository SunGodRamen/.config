" Load the package manager (vim-plug)
call plug#begin('~/.config/nvim/plugged')

" Ruby development plugins
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-bundler'
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
set tabstop=2
set shiftwidth=2
set expandtab

" Enable auto-completion
set completeopt=menuone,noselect

" Configure LSP
lua << EOF
local lspconfig = require('lspconfig')
local cmp = require('cmp')
local lspkind = require('lspkind')

lspconfig.solargraph.setup{
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

" Configure Ruby filetype
au FileType ruby,rails setlocal shiftwidth=2 tabstop=2 softtabstop=2
au FileType ruby,rails setlocal expandtab
au FileType ruby,rails setlocal complete+=k:.gem

" Enable endwise (automatically inserts 'end' keyword for blocks)
let g:endwise_no_mappings = 1
imap <buffer> <expr> <CR> endwise#maybe_end()

" Configure Ruby LSP to run on Ruby filetype
autocmd FileType ruby,rails lua require('lspconfig').solargraph.setup{}
