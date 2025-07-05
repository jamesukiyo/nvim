return {
	"echasnovski/mini.ai",
	event = "BufRead",
	config = function()
		require("mini.ai").setup()
	end,
}
