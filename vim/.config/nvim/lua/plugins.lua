return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'dracula/vim'
  use 'morhetz/gruvbox'
  use 'mattn/emmet-vim'
  -- use 'itchyny/lightline.vim'
  use 'itchyny/vim-gitbranch'
  use 'tpope/vim-surround'
  use 'tpope/vim-fugitive'
  use 'scrooloose/nerdcommenter'
  use 'easymotion/vim-easymotion'
  use 'ryanoasis/vim-devicons'
  use 'vim-test/vim-test'
  use 'voldikss/vim-floaterm'
  use 'airblade/vim-gitgutter'
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  use 'EdenEast/nightfox.nvim'
  use 'skanehira/preview-markdown.vim'
  use 'unblevable/quick-scope'
  use 'mhinz/vim-startify'
  use 'justinmk/vim-sneak'
  use 'romainl/vim-cool'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    'kdheepak/tabline.nvim',
    requires = { { 'hoob3rt/lualine.nvim', opt = true }, { 'kyazdani42/nvim-web-devicons', opt = true } }
  }
  use 'norcalli/nvim-colorizer.lua'
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
  }
  use 'liuchengxu/vim-which-key'
  -- use 'L3MON4D3/LuaSnip'
  -- use 'hrsh7th/nvim-cmp'
  -- use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'
  use 'fannheyward/telescope-coc.nvim'
end)
