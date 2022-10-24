require('basics')
require('colors')
require('telescope-config')
require('coc-config')
require('lualine').setup()

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true
  },
  indent = {
    enable = false
  }
}

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use {'neoclide/coc.nvim', branch = 'release'}
  use 'folke/tokyonight.nvim'
  use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'tpope/vim-commentary'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ThePrimeagen/git-worktree.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = {'nvim-tree/nvim-web-devicons', opt = true}
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    "blackCauldron7/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }
  use 'tpope/vim-fugitive'
  use 'scrooloose/nerdtree'
  use 'tpope/vim-rhubarb'
  use 'matze/vim-move'
  use 'justinmk/vim-sneak'
  use {
    'romgrk/barbar.nvim',
    requires = {'nvim-tree/nvim-web-devicons'}
  }
  use 'towolf/vim-helm'

end)
