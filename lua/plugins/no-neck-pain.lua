return {
	"shortcuts/no-neck-pain.nvim",
	lazy = false,
	priority = 1001,
	config = function()
		require("no-neck-pain").setup({
			width = 110,
			autocmds = {
				enableOnVimEnter = true,
				skipEnteringNoNeckPainBuffer = true,
			},
			buffers = {
				wo = {
					fillchars = "eob: ",
				},
			},
		})
	end,
}
