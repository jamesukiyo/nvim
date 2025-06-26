return {
	"rachartier/tiny-inline-diagnostic.nvim",
	event = "BufReadPost",
	config = function()
		require("tiny-inline-diagnostic").setup({
			preset = "minimal",
			transparent_bg = true,
			transparent_cursorline = false,
			signs = {
				arrow = "",
				up_arrow = "",
			},
			options = {
				show_source = { enabled = true },
				multilines = { enabled = true, always_show = true },
				throttle = 100,
			},
		})
	end,
}
