-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
--  use 'rstacruz/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
--  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
--  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
--  use {
    'w0rp/ale',
 --   ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
 --   cmd = 'ALEEnable',
 --   config = 'vim.cmd[[ALEEnable]]'
--  }

  -- Local plugins can be included
--  use '~/projects/personal/hover.nvim'

  -- You can specify multiple plugins in a single call
--  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- You can alias plugin names
--  use {'dracula/vim', as = 'dracula'}
end)



