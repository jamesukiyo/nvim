require("todo-comments").setup({
	signs = false,
	highlight = {
		before = "",
		keyword = "wide",
		after = "",
	},
})

MAP("n", "<leader>td", ":TodoTelescope<CR>", { desc = "todo list in telescope" })
