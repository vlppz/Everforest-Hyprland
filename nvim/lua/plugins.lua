vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  
  use { "neanias/everforest-nvim", config = require("everforest").setup({background = "hard",
    colours_override = function (palette)
      palette.bg0 = "#1e2326"
    end
  }) }

  use {
    'nvim-lualine/lualine.nvim',
  }

  use 'nvim-tree/nvim-web-devicons'

  use 'neovim/nvim-lspconfig'

  use "williamboman/mason.nvim"

  use "williamboman/mason-lspconfig.nvim"

  use "hrsh7th/nvim-cmp"

  use "L3MON4D3/LuaSnip"

  use "saadparwaiz1/cmp_luasnip"

  use "hrsh7th/cmp-nvim-lsp"

  use "hrsh7th/cmp-path"

  use "rafamadriz/friendly-snippets"

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "elkowar/yuck.vim"

  use 'lewis6991/gitsigns.nvim'

  use 'romgrk/barbar.nvim'
end)
