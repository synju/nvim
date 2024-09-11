local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Disable NVChad's default Alt+h and Alt+v mappings
map("n", "<A-h>", "", opts)
map("n", "<A-v>", "", opts)

-- Resize splits with Ctrl+Alt+h/j/k/l keys
map('n', '<C-A-h>', ':vertical resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-A-l>', ':vertical resize +2<CR>', { noremap = true, silent = true })
map('n', '<C-A-j>', ':resize -2<CR>', { noremap = true, silent = true })
map('n', '<C-A-k>', ':resize +2<CR>', { noremap = true, silent = true })



