local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Disable NVChad's default Alt+h and Alt+v mappings
map("n", "<A-h>", "", opts)
map("n", "<A-v>", "", opts)

-- Resize splits with Alt+hjkl keys
map('n', '<A-h>', ':vertical resize -2<CR>', { noremap = true, silent = true })
map('n', '<A-l>', ':vertical resize +2<CR>', { noremap = true, silent = true })
map('n', '<A-j>', ':resize -2<CR>', { noremap = true, silent = true })
map('n', '<A-k>', ':resize +2<CR>', { noremap = true, silent = true })
