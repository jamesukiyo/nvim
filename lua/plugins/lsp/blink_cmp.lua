return {
	"saghen/blink.cmp",
	event = "BufRead",
	version = "1.*",
	opts = {
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
		-- 	completion = {
		-- 		menu = {
		-- 			auto_show = false,
		-- 			draw = {
		-- 				columns = {
		-- 					{ "label", "label_description", gap = 1 },
		-- 				},
		-- 			},
		-- 		},
		-- 	},
		-- },
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
	},
}
