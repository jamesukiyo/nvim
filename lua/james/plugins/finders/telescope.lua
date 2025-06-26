return {
	"nvim-telescope/telescope.nvim",
	keys = {
		"<leader>fc",
		"<leader>ff",
		"<leader>fg",
		"<leader>ft",
		"<leader>fr",
		"<leader>fw",
		"<leader>fW",
		"<leader>fs",
		"<leader>fp",
	},
	cmd = { "Telescope" },
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("telescope").setup({
			defaults = {
				layout_config = {
					prompt_position = "top",
					preview_width = 0.6,
				},
				path_display = { truncate = 4 },
				sorting_strategy = "ascending",
				dynamic_preview_title = true,
			},
			extensions = {
				workspaces = {},
			},
		})
		local builtin = require("telescope.builtin")
		MAP("n", "<leader>fc", builtin.resume, { desc = "resume last picker" })
		MAP("n", "<leader>ff", builtin.find_files, { desc = "fuzzy files" })
		MAP("n", "<leader>fg", builtin.live_grep, { desc = "fuzzy live grep" })
		MAP("n", "<leader>ft", builtin.treesitter, { desc = "treesitter picker" })
		MAP("n", "<leader>fr", builtin.registers, { desc = "registers picker" })
		MAP("n", "<leader>fw", function()
			local word = vim.fn.expand("<cword>")
			builtin.grep_string({ search = word })
		end, { desc = "search word" })

		MAP("n", "<leader>fW", function()
			local word = vim.fn.expand("<cWORD>")
			builtin.grep_string({ search = word })
		end, { desc = "search WORD" })

		MAP("n", "<leader>fs", function()
			builtin.grep_string({ search = vim.fn.input("Grep > ") })
		end, { desc = "search word from input" })
	end,
}
