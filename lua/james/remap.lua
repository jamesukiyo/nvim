vim.g.mapleader = ' '

local map = vim.keymap.set

map('n', '<C-s>', ":NvimTreeToggle<CR>")

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

-- Insert mode mappings
map('i', 'jk', '<Esc>')
map('i', 'kj', '<Esc>')
map('i', '<Esc>', '<nop>')

-- Visual mode mappings
map('v', '<C-d>', '<C-d>zz')
map('v', '<C-u>', '<C-u>zz')
map('v', 'n', 'nzz')
map('v', 'N', 'Nzz')
map('v', 'jk', '<Esc>')
map('v', '<Esc>', '<nop>')