require("blink.cmp").setup({
	keymap = { preset = "enter" },
	completion = {
		documentation = { auto_show = true, auto_show_delay_ms = 250 },
		menu = {
			draw = {
				columns = {
					{ "kind" },
					{ "label", gap = 1 },
				},
			},
		},
	},
	cmdline = { enabled = false },
	signature = { enabled = true },
	sources = {
		default = { "lsp", "path", "snippets", "buffer" },
		providers = {
			buffer = {
				opts = {
					get_bufnrs = function()
						return vim.tbl_filter(function(bufnr)
							return vim.bo[bufnr].buftype == ""
						end, vim.api.nvim_list_bufs())
					end,
				},
			},
		},
	},
})
