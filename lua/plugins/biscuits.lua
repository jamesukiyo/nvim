return {
	"code-biscuits/nvim-biscuits",
	ft = { "rust", "javascript", "typescript", "shell" },
	config = function()
		require("nvim-biscuits").setup({
			cursor_line_only = true,
			prefix_string = " ",
			toggle_keybind = "<leader>bi",
			show_on_start = false,
		})
	end,
}
