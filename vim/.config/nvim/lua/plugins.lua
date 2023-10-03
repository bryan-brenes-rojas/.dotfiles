local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

return require('lazy').setup({
  'wbthomason/packer.nvim',

  -- themes
  'dracula/vim',
  'morhetz/gruvbox',
  'navarasu/onedark.nvim',
  'EdenEast/nightfox.nvim',
  'drewtempelmeyer/palenight.vim',

  'mattn/emmet-vim',
  -- 'itchyny/lightline.vim'
  'itchyny/vim-gitbranch',
  'tpope/vim-surround',
  'tpope/vim-fugitive',
  'scrooloose/nerdcommenter',
  'easymotion/vim-easymotion',
  'ryanoasis/vim-devicons',
  'vim-test/vim-test',
  'voldikss/vim-floaterm',
  'airblade/vim-gitgutter',
  'skanehira/preview-markdown.vim',
  'mhinz/vim-startify',
  'justinmk/vim-sneak',
  'romainl/vim-cool',
  {
    'nvim-telescope/telescope.nvim',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    build = ':TSUpdate'
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'kyazdani42/nvim-web-devicons' }
  },
  {
    'kdheepak/tabline.nvim',
    dependencies = { { 'nvim-lualine/lualine.nvim' }, { 'kyazdani42/nvim-web-devicons' } }
  },
  'norcalli/nvim-colorizer.lua',
  {
    'kyazdani42/nvim-tree.lua',
    dependencies = { 'kyazdani42/nvim-web-devicons' },
  },
  'liuchengxu/vim-which-key',
  'rcarriga/nvim-notify',
  { "lukas-reineke/indent-blankline.nvim", main = "ibl",      opts = {} },

  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', tag = 'legacy', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',

      -- Adds LSP completion capabilities
      'hrsh7th/cmp-nvim-lsp',

      -- Adds a number of user-friendly snippets
      'rafamadriz/friendly-snippets',
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lua',
      'hrsh7th/cmp-nvim-lsp',
      'saadparwaiz1/cmp_luasnip'
    },
  },
  'akinsho/toggleterm.nvim',
  'folke/which-key.nvim',

  -- harpoon
  {
    'ThePrimeagen/harpoon',
    dependencies = { { 'nvim-lua/plenary.nvim' } }
  }
})
