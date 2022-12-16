local map = vim.keymap.set

-- leader maps
map('', '<space', '<nop>')
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- normal mode
map('n', '//', ':noh<cr>')

map('n', '<leader>E', vim.cmd.Ex)
map('n', '<leader>y', ':%y+<cr>')
map('n', '<leader>d', '"_d')

map('n', '<c-d>', '10<c-d>zz')
map('n', '<c-u>', '10<c-u>zz')

map('n', 'n', 'nzzzv')
map('n', 'N', 'Nzzzv')

map('n', 'H', ':bp<cr>')
map('n', 'L', ':bn<cr>')

map('n', '<', 'v<')
map('n', '>', 'v>')

map('n', '<leader>q', ':w<cr>:bd!<cr>')

-- visual mode
map('v', '<', '<gv')
map('v', '>', '>gv')

map('v', '<a-j>', ':m .+1<cr>==')
map('v', '<a-k>', ':m .-2<cr>==')
map('v', 'p',     '"_dP')

-- visual block
map('x', 'J',     ":move '>+1<cr>gv-gv")
map('x', 'K',     ":move '<-2<cr>gv-gv")
map('x', '<a-j>', ":move '>+1<cr>gv-gv")
map('x', '<a-k>', ":move '<-2<cr>gv-gv")
