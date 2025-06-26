return {
	"echasnovski/mini.diff",
	event = "BufRead",
	config = function()
		require("mini.diff").setup({
			view = {
				style = "number",
			},
			mappings = {
				apply = "",
				reset = "",
				textobject = "",
				goto_first = "",
				goto_prev = "",
				goto_next = "",
				goto_last = "",
			},
		})
	end,
}
