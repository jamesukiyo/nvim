return {
	"Aasim-A/scrollEOF.nvim",
	event = { "WinScrolled" },
	config = function()
		require("scrollEOF").setup({})
	end,
}
