-- Option settings
local opts = { noremap = true, silent = true }

-- Keymaps
vim.keymap.set("n", "<A-j>", "<cmd>set paste<CR>m`o<Esc>``<cmd>set nopaste<CR>o", opts)
vim.keymap.set("n", "<A-k>", "<cmd>set paste<CR>m`O<Esc>``<cmd>set nopaste<CR>", opts)

-- Delete single line character without copying into the register
vim.keymap.set('n', 'x', '"_x', opts)

-- Save with CTRL S
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- Buffer Settigns
vim.keymap.set('n', '<A-LEFT>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<A-RIGHT>', ':bnext<CR>', opts)

-- Split screen settings
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- Keep last copied (yanked) when pasting
vim.keymap.set('v', 'p', '"_dP', opts)


