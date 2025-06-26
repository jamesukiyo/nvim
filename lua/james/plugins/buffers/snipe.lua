return {
	"leath-dub/snipe.nvim",
	keys = { "<leader>fb" },
	config = function()
		local snipe = require("snipe")
		snipe.setup({
			ui = {
				position = "topleft",
				open_win_override = {
					title = "",
					border = "single",
				},
			},
		})
		MAP("n", "<leader>fb", snipe.open_buffer_menu)
	end,
}
