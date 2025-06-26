-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local out = vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--branch=stable",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})

	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end

vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		{ import = "james.plugins.buffers" },
		{ import = "james.plugins.diagnostics" },
		{ import = "james.plugins.docs" },
		{ import = "james.plugins.editing" },
		{ import = "james.plugins.finders" },
		{ import = "james.plugins.games" },
		{ import = "james.plugins.git" },
		{ import = "james.plugins.lsp" },
		{ import = "james.plugins.monorepos" },
		{ import = "james.plugins.qol" },
		{ import = "james.plugins.runners" },
		{ import = "james.plugins.snippets" },
		{ import = "james.plugins.tools" },
		{ import = "james.plugins.treesitter" },
		{ import = "james.plugins.ui" },
		{ import = "james.plugins.ui.themes" },
	},
	change_detection = { notify = false },
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "gruber-darker" } },
	-- automatically check for plugin updates
	checker = { enabled = true, notify = false },
	ui = { border = "single", backdrop = 95 },
})
