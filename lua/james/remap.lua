vim.g.mapleader = ' '

local map = vim.keymap.set

-- thanks primeagen
map("x", "<leader>p", [["_dP]]) -- paste over text but keep clipboard
map({"n", "v"}, "<leader>y", [["+y]]) -- yank to system clipboard
map("n", "<leader>Y", [["+Y]]) -- yank line to system clipboard
map({"n", "v"}, "<leader>d", "\"_d") -- delete without yanking

-- Center cursor on various movements
map('n', '<C-d>', '<C-d>zz')
map('n', '<C-u>', '<C-u>zz')
map('n', 'n', 'nzz')
map('n', 'N', 'Nzz')

-- Better line-wise movements
map('n', 'j', 'gj')
map('n', 'k', 'gk')

-- Start/end of line movements
map('n', 'H', '^')
map('n', 'L', '$')

-- Switch panes
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

-- Quickly remove search highlighting
map('n', '<Esc>', ':noh<CR>')
map('n', '<nowait> jk', '<Esc>')
map('n', '<nowait> kj', '<Esc>')

-- Insert mode mappings
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')
map('i', '<Esc>', '<nop>')

-- Visual mode mappings
map('v', '<C-d>', '<C-d>zz')
map('v', '<C-u>', '<C-u>zz')
map('v', 'n', 'nzz')
map('v', 'N', 'Nzz')
map('v', '<nowait> jk', '<Esc>')
map('v', '<nowait> kj', '<Esc>')
map('v', '<Esc>', '<nop>')
