return {
	"Equilibris/nx.nvim",
	keys = {
		{ "<leader>nx", ":Telescope nx actions<CR>", desc = "view nx actions" },
	},
	config = function()
		require("nx").setup({
			nx_cmd_root = "bunx nx",
		})
	end,
}
