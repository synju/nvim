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
    'anuvyklack/hydra.nvim',  -- Hydra is required by multicursors.nvim
    lazy = false,
  },
  {
    'smoka7/multicursors.nvim',
    branch = 'main',
    lazy = false,
    config = function()
      local mc = require("multicursors")
      mc.setup({
        -- Custom options (if needed) can go here
      })

      -- Keybindings for multiple cursors
      vim.api.nvim_set_keymap('n', '<A-j>', ":MCstart<CR>", { noremap = true, silent = true })   -- Start multiple cursors
      vim.api.nvim_set_keymap('v', '<A-j>', ":MCstart<CR>", { noremap = true, silent = true })   -- Visual mode start
      vim.api.nvim_set_keymap('n', '<A-k>', ":MCremove<CR>", { noremap = true, silent = true })  -- Remove a cursor
      vim.api.nvim_set_keymap('n', '<A-x>', ":MCskip<CR>", { noremap = true, silent = true })    -- Skip the current occurrence
    end
  }
}
