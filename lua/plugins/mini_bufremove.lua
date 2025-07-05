return {
	"echasnovski/mini.bufremove",
	event = "BufRead",
	config = function()
		require("mini.bufremove").setup()

		MAP("n", "<leader>qb", function()
			CMD("lua MiniBufremove.delete()")
		end, { desc = "close buffer" })
	end,
}
