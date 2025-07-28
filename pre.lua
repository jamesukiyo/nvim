-- plugins with global opts that need to be set before they are loaded
--
-- minisnip
vim.g.miniSnip_dirs = { "~/.vim/snippets" }
vim.g.miniSnip_trigger = "<C-c>"
vim.g.miniSnip_complkey = ""
vim.g.miniSnip_extends = {
	html = { "svelte" },
	svelte = { "typescript", "html" },
	javascript = { "typescript" },
	typescript = { "javascript" },
}

-- vimwiki
vim.g.vimwiki_option_diary_path = "./diary/"
vim.g.vimwiki_global_ext = 0
vim.g.vimwiki_option_nested_syntaxes = { svelte = "svelte", typescript = "ts" }
vim.g.vimwiki_list = {
	{
		path = "~/vimwiki/james/",
		name = "james",
		syntax = "markdown",
		ext = "md",
	},
	{
		path = "~/vimwiki/healgorithms/",
		name = "healgorithms",
		syntax = "markdown",
		ext = "md",
		auto_toc = 1,
	},
}

-- rustacean
vim.g.rustaceanvim = {
	inlay_hints = {
		highlight = "NonText",
	},
	tools = {
		hover_actions = {
			auto_focus = true,
		},
	},
	server = {
		on_attach = function(client, bufnr)
			-- Custom on_attach logic
		end,
	},
}

-- compile-mode
vim.g.compile_mode = {
	baleia_setup = true,
	default_command = "",
	recompile_no_fail = true,
}

-- colorschemes with global opts that need to be set before they are loaded
--
-- jimbo
vim.g.jimbo_transparent = 1
vim.g.jimbo_bold = 0
vim.g.jimbo_italic = 0

-- moonfly
vim.g.moonflyWinSeparator = 0
vim.g.moonflyItalics = false
vim.g.moonflyUndercurls = false

-- zenbones
vim.g.bones_compat = 1
vim.g.zenbones_transparent_background = 0
vim.g.zenbones_solid_line_nr = 1
vim.g.zenbones_italic_comments = 0
vim.g.zenbones_lighten_line_nr = 10000000000
vim.g.zenbones_solid_float_border = true
vim.g.colorize_diagnostic_underline_text = true
