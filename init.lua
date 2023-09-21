require('basics')
require('colors')
require('telescope-config')
require('lsp-config')
require('lualine').setup()

require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = { "yaml", "helm" },
  },
  indent = {
    enable = true
  }
}

require("neo-tree").setup {
  window = {
    mappings = {
      ["l"] = { "open" },
      ["h"] = { "close_node" },
      ["<esc>"] = { "close_window" },
    }
  }
}

vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  callback = function()
    vim.lsp.buf.format()
  end
})

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'folke/tokyonight.nvim'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'tpope/vim-fugitive'
  use 'tpope/vim-rhubarb'
  use 'tpope/vim-commentary'
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require "surround".setup { mappings_style = "sandwich" }
    end
  }
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'ThePrimeagen/git-worktree.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  }
  use {
    'nvim-telescope/telescope.nvim',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  -- use 'matze/vim-move'
  use 'justinmk/vim-sneak'
  use {
    'romgrk/barbar.nvim',
    requires = { 'nvim-tree/nvim-web-devicons' }
  }
  use 'chaoren/vim-wordmotion'
  use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }
  use 'hrsh7th/nvim-cmp'         -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp'     -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip'         -- Snippets plugin
  use 'natecraddock/workspaces.nvim'
  use 'towolf/vim-helm'
  use 'github/copilot.vim'
  use "lukas-reineke/indent-blankline.nvim"
  use { 'alexghergh/nvim-tmux-navigation', config = function()
    require 'nvim-tmux-navigation'.setup {
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<C-h>",
        down = "<C-j>",
        up = "<C-k>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      }
    }
  end
  }
  use 'mg979/vim-visual-multi'
  use { "akinsho/toggleterm.nvim", tag = '*' }
end)
