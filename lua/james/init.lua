-- Neovim Config

-- Core Setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('james.set')
require('james.remap')

require('james.lazy_init')

local autocmd = vim.api.nvim_create_autocmd

autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({ higroup = 'Visual', timeout = 500 })
  end,
})

autocmd("VimResized", {
  pattern = "*",
  callback = function()
    vim.cmd("wincmd =")
  end
})
