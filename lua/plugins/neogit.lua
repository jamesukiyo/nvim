return {
	"NeogitOrg/neogit",
	dependencies = { "sindrets/diffview.nvim" },
	cmd = "Neogit",
	keys = { "<leader>g" },
	config = function()
		require("neogit").setup({
			integrations = {
				telescope = true,
				diffview = true,
			},
			commit_editor = {
				staged_diff_split_kind = "vsplit",
			},
			commit_select_view = { kind = "vsplit" },
		})

		vim.o.showtabline = 0
		MAP("n", "<leader>g", ":Neogit<CR>", { desc = "open neogit" })
	end,
}
