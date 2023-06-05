
local plugins = {
  {
    "github/copilot.vim",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    
     dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    
    config = function()
      require("plugins.configs.lspconfig")
      require("custom.configs.lspconfig")
    end,
  },
  {
    'rmagatti/auto-session',
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
      }
    end,
  },

  {
    'jordaniza/ethHvr',
    lazy = false,
  }
}

return plugins
