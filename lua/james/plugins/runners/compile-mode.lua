return {
	"ej-shafran/compile-mode.nvim",
	cmd = "Compile",
	keys = { "<leader>co", "<leader>cr" },
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "m00qek/baleia.nvim", tag = "v1.3.0" },
	},
	config = function()
		vim.g.compile_mode = {
			baleia_setup = true,
			default_command = "",
			recompile_no_fail = true,
		}
		MAP("n", "<leader>co", ":vert Compile<cr>", { desc = "run a compile cmd" })
		MAP("n", "<leader>cr", ":vert Recompile<cr>", { desc = "rerun last compile cmd" })
	end,
}
