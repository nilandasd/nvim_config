local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- return to normal mode from terminal mode
keymap("t", "<C-n>", "<C-\\><C-n>", opts)

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>q", ":wq<cr>", opts)

-- copy paste w/ clipboard
keymap("v", "<leader>y", [["+y]], opts)
keymap("n", "<leader>p", [["+p]], opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

--tabs
keymap("n", "<leader>j", ":tabprevious<cr>", opts)
keymap("n", "<leader>k", ":tabnew<cr>", opts)
keymap("n", "<leader>l", ":tabclose<cr>", opts)
keymap("n", "<leader>;", ":tabnext<cr>", opts)

--Telescope
keymap("n", "<leader>f", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>g", ":Telescope live_grep<cr>", opts)
--keymap("n", "<leader>d", ":Telescope git_branches<cr>", opts)
keymap("n", "<leader>s", ":Telescope oldfiles<cr>", opts)

