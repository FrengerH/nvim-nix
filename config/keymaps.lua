local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
-- keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
keymap("n", "<leader>pi", ":PlugInstall<cr>", opts)
keymap("n", "<leader>e", ":Ex<cr>", opts)

-- window movement remaps
-- keymap("n", "<a-h>", "<cmd>wincmd h<cr>", opts)
-- keymap("n", "<a-j>", "<cmd>wincmd j<cr>", opts)
-- keymap("n", "<a-k>", "<cmd>wincmd k<cr>", opts)
-- keymap("n", "<a-l>", "<cmd>wincmd l<cr>", opts)

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Insert --

-- Visual --

-- Visual Block --

-- Terminal --
