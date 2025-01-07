vim.g.mapleader = ' '

local map = vim.keymap.set

-- thanks primeagen
map("x", "<leader>p", [["_dP]], { desc = "paste over text but keep clipboard" })
map({"n", "v"}, "<leader>y", [["+y]], { desc = "yank selection to system clipboard" })
map("n", "<leader>Y", [["+Y]], { desc = "yank line to system clipboard" })
map({"n", "v"}, "<leader>d", "\"_d", { desc = "delete without yank" })
map("n", "J", "mzJ`z", { desc = "better line joins" })
map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
    { desc = "instant search and replace current word" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "move line down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "move line up" })

-- Center cursor on various movements
map('n', '<C-d>', '<C-d>zz', { desc = "1/2 page down + center cursor" })
map('n', '<C-u>', '<C-u>zz', { desc = "1/2 page up + center cursor" })
map('n', 'n', 'nzz', { desc = "center cursor on next search result" })
map('n', 'N', 'Nzz', { desc = "center cursor on previous search result" })

-- Start/end of line movements
map('n', 'H', '^', { desc = "move to first non-blank character of line" })
map('n', 'L', '$', { desc = "move to last character of line" })

-- Switch panes
map('n', '<C-h>', '<C-w>h', { desc = "switch to left pane" })
map('n', '<C-j>', '<C-w>j', { desc = "switch to below pane" })
map('n', '<C-k>', '<C-w>k', { desc = "switch to above pane" })
map('n', '<C-l>', '<C-w>l', { desc = "switch to right pane" })

-- Visual mode mappings
map('v', '<C-d>', '<C-d>zz', { desc = "1/2 page down + center cursor" })
map('v', '<C-u>', '<C-u>zz', { desc = "1/2 page up + center cursor" })
map('v', 'n', 'nzz', { desc = "center cursor on next search result" })
map('v', 'N', 'Nzz', { desc = "center cursor on previous search result" })

-- switch buffers
map('n', '<leader>h', ":bprevious<CR>", { desc = "previous buffer" })
map('n', '<leader>l', ":bnext<CR>", { desc = "next buffer" })

map('n', '<leader>gg', "gg=G``", {desc = "Indent entire file and return to last edit position"})

map('n', '<leader>tt', "<cmd>:vs<cr><cmd>term<cr>", { desc = "open a terminal in a vertical split" })

map('n', '<leader>qq', "<cmd>clo<cr>", { desc = "close window" })
