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

-- Vim-visual-multi mappings to avoid conflicts
vim.g.VM_maps = {
  ["Find Under"] = "<C-j>",   -- Start selecting words for multiple cursors (remapped from <C-n>)
  ["Skip Region"] = "<C-x>",  -- Skip the current selection
  ["Remove Region"] = "<C-k>" -- Remove the current selection (remapped from <C-p>)
}
