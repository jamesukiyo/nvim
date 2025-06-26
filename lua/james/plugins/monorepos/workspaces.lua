return {
	"natecraddock/workspaces.nvim",
	cmd = "Telescope workspaces",
	keys = { "<leader>fp" },
	config = function()
		require("workspaces").setup({
			auto_open = true,
		})
		require("telescope").load_extension("workspaces")
		MAP(
			"n",
			"<leader>fp",
			":Telescope workspaces<CR>",
			{ desc = "open project list" }
		)
	end,
}
