return {
	"folke/todo-comments.nvim",
	event = "BufRead",
	-- cmd = "TodoTelescope",
	-- keys = { "<leader>td" },
	config = function()
		require("todo-comments").setup({
			signs = false,
			highlight = {
				before = "",
				keyword = "wide",
				after = "",
			},
		})
		-- MAP("n", "]t", function() require("todo-comments").jump_next() end, { desc = "next todo comment" })
		--
		-- MAP("n", "[t", function() require("todo-comments").jump_prev() end, { desc = "prev todo comment" })
		--
		-- TODO: something
		MAP("n", "<leader>td", ":TodoTelescope<CR>", { desc = "todo list in telescope" })
	end,
}
