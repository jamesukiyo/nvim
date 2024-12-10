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
map('n', '<leader>h', '<C-w>h')
map('n', '<leader>j', '<C-w>j')
map('n', '<leader>k', '<C-w>k')
map('n', '<leader>l', '<C-w>l')

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

-- Harpoon Keymaps
map("n", "<leader>a", function() harpoon:list():add() end)
map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
map("n", "<leader>o", function() toggle_telescope(harpoon:list()) end)

-- Navigation
map("n", "<C-h>", function() harpoon:list():select(1) end)
map("n", "<C-j>", function() harpoon:list():select(2) end)
map("n", "<C-k>", function() harpoon:list():select(3) end)
map("n", "<C-l>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
map("n", "<C-H>", function() harpoon:list():prev() end)
map("n", "<C-L>", function() harpoon:list():next() end)

