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
