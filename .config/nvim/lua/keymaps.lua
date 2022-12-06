
-- pre config
local opts = {noremap = true, silent = true}
local t_opts = {noremap = true, silent = true}

local map = vim.api.nvim_set_keymap


-- leader maps
map("", "<space", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode
map("n", "//", ":nohl<cr>", opts)

map("n", "<leader>e", ":Lex 30<cr>", opts)
map("n", "<leader>y", ":%y+<cr>", opts)
map("n", "<leader>d", "\"_d", opts)

map("n", "<c-d>", "10<c-d>zz", opts)
map("n", "<c-u>", "10<c-u>zz", opts)

map("n", "H", ":bprevious<cr>", opts)
map("n", "L", ":bnext<cr>", opts)

map("n", "<c-h>", "<c-w>h", opts)
map("n", "<c-j>", "<c-w>j", opts)
map("n", "<c-k>", "<c-w>k", opts)
map("n", "<c-l>", "<c-w>l", opts)

map("n", "<c-up>", ":resize +2<cr>", opts)
map("n", "<c-down>", ":resize -2<cr>", opts)
map("n", "<c-left>", ":vertical resize -2<cr>", opts)
map("n", "<c-right>", ":vertical resize +2<cr>", opts)

-- visual mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

map("v", "<a-j>", ":m .+1<cr>==", opts)
map("v", "<a-k>", ":m .-2<cr>==", opts)
map("v", "p", '"_dP', opts)

-- visual block
map("x", "J", ":move '>+1<cr>gv-gv", opts)
map("x", "K", ":move '<-2<cr>gv-gv", opts)
map("x", "<a-j>", ":move '>+1<cr>gv-gv", opts)
map("x", "<a-k>", ":move '<-2<cr>gv-gv", opts)

-- terminal mode
map("t", "<esc>", "<c-\\><c-n>", t_opts)

