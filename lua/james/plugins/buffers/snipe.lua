require("snipe").setup({
	ui = {
		position = "topleft",
		open_win_override = {
			title = "",
			border = "single",
		},
	},
})
MAP("n", "<leader>fb", require("snipe").open_buffer_menu)
