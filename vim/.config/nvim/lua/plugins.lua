return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
  use 'dracula/vim'
  use 'morhetz/gruvbox'
  use 'mattn/emmet-vim'
  use 'itchyny/lightline.vim'
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
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)
