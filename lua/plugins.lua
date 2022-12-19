return require('packer').startup(function()

  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- gruvbox theme
  use {
  "ellisonleao/gruvbox.nvim",
  requires = {"rktjmp/lush.nvim"}
  }
  
  -- Auto pairs
  use {
  "windwp/nvim-autopairs",
  config = function() require("nvim-autopairs").setup {} end
  }
  
  -- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow"

  -- LSP
  use {
    "neovim/nvim-lspconfig",
    opt = true,
    event = "BufReadPre",
    wants = { "nvim-lsp-installer" },
    config = function()
      require("plugin-config.lsp").setup()
    end,
    requires = {
      "williamboman/nvim-lsp-installer",
    },
  }
  
end)



