return {
	"vxpm/ferris.nvim",
	ft = "rust",
	config = function()
		require("ferris").setup({
			create_commands = true,
			url_handler = "start",
		})
	end,
}
