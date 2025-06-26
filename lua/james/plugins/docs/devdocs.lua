return {
	"luckasRanarison/nvim-devdocs",
	cmd = { "DevdocsOpenCurrent", "DevdocsOpen" },
	keys = { "<leader>de" },
	config = function()
		require("nvim-devdocs").setup({})
		MAP("n", "<leader>de", ":DevdocsOpenCurrent<CR>", { desc = "open dev docs" })
	end,
}
