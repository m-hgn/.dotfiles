local opts = {noremap = true, silent = true}
local t_opts = {noremap = true, silent = true}

local map = vim.api.nvim_set_keymap

-- leader maps
map("", "<space", "<nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal mode
map("n", "//", ":nohl<cr>", opts)

map("n", "<leader>e", ":e %:h/<c-d>", opts)
map("n", "<leader>f", ":History<cr>", opts)
map("n", "<leader>y", ":%y+<cr>", opts)
map("n", "<leader>d", "\"_d", opts)

map("n", "<c-d>", "10<c-d>zz", opts)
map("n", "<c-u>", "10<c-u>zz", opts)

map("n", "H", ":bprevious<cr>", opts)
map("n", "L", ":bnext<cr>", opts)

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

