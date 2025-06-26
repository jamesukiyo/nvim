return {
	"j-hui/fidget.nvim",
	event = "VeryLazy",
	config = function()
		require("fidget").setup({
			progress = {
				display = {
					done_ttl = 10,
				},
			},
			notification = {
				override_vim_notify = true,
				window = {
					winblend = 0,
					zindex = 1000,
					max_width = 60,
				},
			},
		})
	end,
}
