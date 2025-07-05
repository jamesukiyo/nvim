return {
	"folke/twilight.nvim",
	cmd = "Twilight",
	config = function()
		require("twilight").setup({
			dimming = {
				alpha = 0.4,
			},
		})
	end,
}
