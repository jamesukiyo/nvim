return {
	"nvim-treesitter/nvim-treesitter-context",
	event = "BufRead",
	config = function()
		require("treesitter-context").setup({
			max_lines = 3,
			separator = "-",
		})

		SET_HL(0, "TreesitterContextLineNumberBottom", {
			fg = "#FFFFFF",
		})
		SET_HL(0, "TreesitterContextSeparator", {
			fg = "#363636",
		})
	end,
}
