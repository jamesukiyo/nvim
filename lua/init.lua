-- Neovim Config

-- GLOBALS
CMD = vim.cmd
AUTOCMD = vim.api.nvim_create_autocmd
AUGROUP = vim.api.nvim_create_augroup
CREATE_CMD = vim.api.nvim_create_user_command
MAP = vim.keymap.set
SET_HL = vim.api.nvim_set_hl

-- Core Setup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("set")
require("remap")
require("lazy_init")
require("autocmd")
