vim.loader.enable()

-- disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- global variables
CMD = vim.cmd
AUTOCMD = vim.api.nvim_create_autocmd
AUGROUP = vim.api.nvim_create_augroup
CREATE_CMD = vim.api.nvim_create_user_command
MAP = vim.keymap.set
SET_HL = vim.api.nvim_set_hl

-- allows for non lua/* config
dofile(vim.fn.stdpath("config") .. "/colors.lua")
dofile(vim.fn.stdpath("config") .. "/opts.lua")
dofile(vim.fn.stdpath("config") .. "/maps.lua")
dofile(vim.fn.stdpath("config") .. "/autocmd.lua")
dofile(vim.fn.stdpath("config") .. "/pre.lua")
dofile(vim.fn.stdpath("config") .. "/pack.lua")
dofile(vim.fn.stdpath("config") .. "/lsp.lua")
dofile(vim.fn.stdpath("config") .. "/auto_colors.lua")
