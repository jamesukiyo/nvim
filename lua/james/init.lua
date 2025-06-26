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

require("james.set")
require("james.remap")
require("james.lazy_init")

AUTOCMD("FileType", {
	pattern = { "html", "svelte", "lua", "yaml", "json", "css", "wiki", "md" },
	callback = function()
		vim.bo.tabstop = 4
		vim.bo.shiftwidth = 4
		vim.bo.softtabstop = 4
	end,
})

AUTOCMD("FileType", {
	pattern = { "yaml" },
	callback = function()
		vim.bo.tabstop = 2
		vim.bo.shiftwidth = 2
		vim.bo.softtabstop = 2
	end,
})

AUTOCMD("FileType", {
	pattern = { "gitcommit" },
	callback = function()
		vim.o.textwidth = 72
		vim.o.colorcolumn = "50"
	end,
})

AUTOCMD("FileType", {
	pattern = { "markdown" },
	callback = function()
		vim.o.textwidth = 80
	end,
})

SET_HL(0, "ws", { bg = "red" })
vim.fn.matchadd("ws", [[\s\+$]])
AUTOCMD("InsertEnter", {
	callback = function()
		vim.fn.clearmatches()
	end,
})
AUTOCMD("InsertLeave", {
	callback = function()
		vim.fn.matchadd("ws", [[\s\+$]])
	end,
})

AUTOCMD("TextYankPost", {
	callback = function()
		vim.highlight.on_yank({ higroup = "Visual", timeout = 500 })
	end,
})

AUTOCMD("VimResized", {
	pattern = "*",
	callback = function()
		CMD("wincmd =")
	end,
})

AUTOCMD("BufWritePre", {
	pattern = "*",
	command = [[%s/\s\+$//e]],
})
