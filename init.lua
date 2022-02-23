-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim' -- Package manager
  use 'tpope/vim-fugitive' -- Git commands in nvim
  use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines
  -- UI to select things (files, grep results, open buffers...)
  use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  use { 'dracula/vim', as = 'dracula' }
  use {
      'neovim/nvim-lspconfig',
      'williamboman/nvim-lsp-installer',
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons',
    },
    config = function() require'nvim-tree'.setup {} end
  }
end)

vim.cmd('colorscheme dracula')

-- Exibe numero da linha
vim.opt.number = true

vim.api.nvim_set_keymap('n', '<F3>', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

-- SPLITS and TABBED FILES
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Altera o foco do split
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

-- Altera tamanho de cada split
vim.api.nvim_set_keymap('n', '<C-Left>', ':vertical resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Right>', ':vertical resize -3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Up>', ':resize +3<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Down>', ':resize -3<CR>', { noremap = true, silent = true })


