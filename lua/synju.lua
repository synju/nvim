-- Always show tabline
vim.opt.showtabline = 2

-- Enable mouse clicking
vim.opt.mouse = 'a'

-- Treesitter config
require'nvim-treesitter.configs'.setup {
  ensure_installed = { "vue", "javascript", "html", "css" }, -- Add relevant languages
  highlight = { enable = true },
  indent = { enable = true },
  fold = { enable = true },
}

-- Code folding
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()'
vim.opt.foldlevel = 99  -- To show all folds by default

-- Turn off wrapping
vim.opt.wrap = false

-- include "localoptions", important for managing sessions properly
vim.o.sessionoptions = "buffers,curdir,tabpages,winsize,localoptions"
