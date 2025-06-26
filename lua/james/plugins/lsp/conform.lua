return {
	"stevearc/conform.nvim",
	event = "BufRead",
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				go = { "gofumpt", "goimports" },
				javascript = { "dprint" },
				javascriptreact = { "dprint" },
				typescript = { "dprint" },
				typescriptreact = { "dprint" },
				json = { "dprint" },
				-- svelte = { "dprint" }, -- temp while working on dr-radka
				vue = { "dprint" },
				yaml = { "dprint" },
				md = { "dprint" },
				toml = { "dprint" },
				lua = { "stylua" },
				sql = { "sql_formatter" },
				python = { "ruff_format" },
				rust = { "rustfmt" },
				-- nu = { "nufmt" },
			},
			format_after_save = {
				async = true,
				-- lsp_format = "fallback",
			},
		})
	end,
}
