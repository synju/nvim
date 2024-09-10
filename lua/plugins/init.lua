return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Auto Session
  {
    'rmagatti/auto-session',
    lazy = false, -- This ensures the plugin is not lazy-loaded and will be loaded on startup
    config = function()
      require('auto-session').setup {
        log_level = 'info',
        auto_session_enable_last_session = false,
        auto_save_enabled = true,
        auto_restore_enabled = true,
      }
    end
  },

  -- Multi Cursors
  {
    'mg979/vim-visual-multi',
    branch = 'master',
    lazy=false,
    priority = 1000,
  },
}
