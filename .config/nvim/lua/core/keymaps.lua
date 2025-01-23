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

-- Navigate split screens
function toggleScreen()
  -- Check if the screen is open
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buff = vim.api.nvim_win_get_buf(win)
    local buffname = vim.api.nvim_buf_get_name(buff)

    if buffname:match("neo%-tree") then
      vim.cmd("wincmd l") 
      return
    end
  end

  vim.cmd("wincmd h")
  return
end
vim.keymap.set('n', '<C-w>', toggleScreen, opts)
