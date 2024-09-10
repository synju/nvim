return {
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
}
