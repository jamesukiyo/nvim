vim.g.compile_mode = {
	baleia_setup = true,
	default_command = "",
	recompile_no_fail = true,
}

MAP("n", "<leader>co", ":vert Compile<cr>", { desc = "run a compile cmd" })
MAP("n", "<leader>cr", ":vert Recompile<cr>", { desc = "rerun last compile cmd" })
