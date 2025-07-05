require("ccc").setup({
	highlighter = {
		auto_enable = false,
		lsp = true,
	},
})

MAP("n", "<leader>ccc", "<cmd>CccHighlighterToggle<CR>", { silent = true })
