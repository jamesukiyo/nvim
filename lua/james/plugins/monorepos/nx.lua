require("nx").setup({
	nx_cmd_root = "bunx nx",
})

MAP("n", "<leader>nx", ":Telescope nx actions<CR>", { desc = "view nx actions" })
