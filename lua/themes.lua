return {
	-- Active theme
	{
		"kvrohit/rasmus.nvim",
		priority = 1000,
		config = function()
			ColorMyPencils("rasmus")
			DisableItalic()
			DisableBold()

			SET_HL(0, "SpellBad", { undercurl = false, underline = true })
			SET_HL(0, "SpellCap", { undercurl = false, underline = true })
			SET_HL(0, "SpellLocal", { undercurl = false, underline = true })
			SET_HL(0, "SpellRare", { undercurl = false, underline = true })
			SET_HL(0, "DiagnosticUnderlineError", { undercurl = false, underline = true })
			SET_HL(0, "DiagnosticUnderlineWarn", { undercurl = false, underline = true })
			SET_HL(0, "DiagnosticUnderlineInfo", { undercurl = false, underline = true })
			SET_HL(0, "DiagnosticUnderlineHint", { undercurl = false, underline = true })
			SET_HL(0, "DiffAdd", { reverse = false })
			SET_HL(0, "DiffChange", { reverse = false })
			SET_HL(0, "DiffDelete", { reverse = false })
		end,
	},

	-- Disabled themes
	-- {
	-- 	"andreasvc/vim-256noir",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function()
	-- 		ColorMyPencils("256_noir")
	-- 		CMD([[
	-- 			hi Normal cterm=NONE ctermfg=250 ctermbg=NONE gui=NONE guifg=#bcbcbc guibg=NONE
	-- 			hi Keyword cterm=NONE ctermfg=255 ctermbg=NONE gui=NONE guifg=#eeeeee guibg=NONE
	-- 			hi Constant cterm=NONE ctermfg=252 ctermbg=NONE gui=NONE guifg=#d0d0d0 guibg=NONE
	-- 			hi String cterm=NONE ctermfg=245 ctermbg=NONE gui=NONE guifg=#8a8a8a guibg=NONE
	-- 			hi Comment cterm=NONE ctermfg=240 ctermbg=NONE gui=NONE guifg=#585858 guibg=NONE
	-- 			hi Number cterm=NONE ctermfg=196 ctermbg=NONE gui=NONE guifg=#ff0000 guibg=NONE
	-- 			hi SignColumn cterm=NONE ctermfg=124 ctermbg=NONE gui=NONE guifg=#af0000 guibg=NONE
	-- 			hi SpellRare cterm=NONE ctermfg=124 ctermbg=NONE gui=NONE guifg=#af0000 guibg=NONE
	-- 			hi StatusLine cterm=bold ctermfg=245 ctermbg=233 gui=bold guifg=#8a8a8a guibg=#121212
	-- 			hi StatusLineNC cterm=NONE ctermfg=236 ctermbg=233 gui=NONE guifg=#303030 guibg=#121212
	-- 			hi Visual cterm=NONE ctermfg=250 ctermbg=236 gui=NONE guifg=#bcbcbc guibg=#303030
	-- 			hi Normal cterm=NONE ctermfg=Gray ctermbg=NONE
	-- 			hi Keyword cterm=NONE ctermfg=White ctermbg=NONE
	-- 			hi Constant cterm=NONE ctermfg=Gray ctermbg=NONE
	-- 			hi String cterm=NONE ctermfg=Gray ctermbg=NONE
	-- 			hi Comment cterm=NONE ctermfg=DarkGray ctermbg=NONE
	-- 			hi Number cterm=NONE ctermfg=Red ctermbg=NONE
	-- 			hi SignColumn cterm=NONE ctermfg=Red ctermbg=NONE
	-- 			hi SpellRare cterm=NONE ctermfg=Red ctermbg=NONE
	-- 			hi StatusLine cterm=bold ctermfg=Gray ctermbg=Black
	-- 			hi StatusLineNC cterm=NONE ctermfg=DarkGray ctermbg=Black
	-- 			hi Visual cterm=NONE ctermfg=Gray ctermbg=DarkGray
	-- 		]])
	-- 		ColorMyPencils("256_noir")
	-- 		DisableItalicsAndBold()
	-- 	end,
	-- },

	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "mocha", -- latte, frappe, macchiato, mocha
	-- 			background = { dark = "mocha" },
	-- 			transparent = true,
	-- 			term_colors = true,
	-- 			dim_inactive = {
	-- 				enabled = true,
	-- 				shade = "dark",
	-- 				percentage = 0.5,
	-- 			},
	-- 			show_end_of_buffer = true,
	-- 			integrations = {
	-- 				telescope = { enabled = true },
	-- 				mini = { enabled = true, indentscope_color = "lavender" },
	-- 				mason = true,
	-- 				harpoon = true,
	-- 				cmp = true,
	-- 				treesitter = true,
	-- 				which_key = true,
	-- 				gitsigns = true,
	-- 			},
	-- 			custom_highlights = function(colors)
	-- 				return {
	-- 					LineNr = { fg = colors.overlay1 },
	-- 				}
	-- 			end,
	-- 		})
	-- 		ColorMyPencils("catppuccin")
	-- 	end,
	-- },

	-- {
	-- 	"aliqyan-21/darkvoid.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("darkvoid").setup({
	-- 			transparent = true,
	-- 			glow = false,
	-- 			show_end_of_buffer = true,
	-- 			colors = {
	-- 				plugins = {
	-- 					lualine = false,
	-- 				},
	-- 			},
	-- 		})
	-- 		ColorMyPencils("darkvoid")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	-- blazkowolf is a bit more colourful
	-- 	-- "blazkowolf/gruber-darker.nvim",
	-- 	"thimc/gruber-darker.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("gruber-darker").setup({
	-- 			transparent = true,
	-- 		})
	-- 		-- require("gruber-darker").setup({
	-- 		-- 	bold = true,
	-- 		-- 	italic = {
	-- 		-- 		comments = false,
	-- 		-- 		strings = false,
	-- 		-- 		folds = false,
	-- 		-- 		operators = false,
	-- 		-- 	},
	-- 		-- 	invert = {
	-- 		-- 		visual = false,
	-- 		-- 	},
	-- 		-- 	undercurl = true,
	-- 		-- 	underline = true,
	-- 		-- })
	--
	-- 		function DisableGruberUndercurl()
	-- 			local hl_groups = {
	-- 				"GruberDarkerRedUnderline",
	-- 				"GruberDarkerGreenUnderline",
	-- 				"GruberDarkerYellowUnderline",
	-- 				"GruberDarkerQuartzUnderline",
	-- 				"GruberDarkerNiagaraUnderline",
	-- 				"GruberDarkerWisteriaUnderline",
	-- 			}
	-- 			for _, hl in ipairs(hl_groups) do
	-- 				CMD.highlight(hl .. " gui=underline cterm=underline")
	-- 			end
	-- 		end
	--
	-- 		ColorMyPencils("gruber-darker")
	-- 		DisableGruberUndercurl()
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"ellisonleao/gruvbox.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("gruvbox").setup({
	-- 			terminal_colors = true,
	-- 			dim_inactive = true,
	-- 			transparent = true,
	-- 		})
	-- 		ColorMyPencils("gruvbox")
	-- 	end,
	-- },

	-- {
	-- 	"jamesukiyo/jimbo.vim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		CMD([[
	-- 			let g:jimbo_transparent = 1
	-- 			let g:jimbo_bold = 0
	-- 			let g:jimbo_italic = 0
	-- 		]])
	-- 		CMD("colorscheme jimbo")
	-- 	end,
	-- },

	-- {
	-- 	"slugbyte/lackluster.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		local lackluster = require("lackluster")
	-- 		local color = lackluster.color
	-- 		require("lackluster").setup({
	-- 			disable_plugin = {
	-- 				todo_comments = true,
	-- 			},
	-- 			tweak_ui = {
	-- 				disable_undercurl = true,
	-- 				enable_end_of_buffer = true,
	-- 			},
	-- 			tweak_background = {
	-- 				normal = "none",
	-- 				telescope = "none",
	-- 				menu = "none",
	-- 				popup = "none",
	-- 			},
	-- 			tweak_highlight = {
	-- 				["@function"] = {
	-- 					bold = true,
	-- 				},
	-- 				["@keyword"] = {
	-- 					bold = true,
	-- 				},
	-- 			},
	-- 			tweak_syntax = {
	-- 				comment = color.gray5,
	-- 			},
	-- 		})
	-- 		ColorMyPencils("lackluster-mint")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"dasupradyumna/midnight.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		ColorMyPencils("midnight")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"kdheepak/monochrome.nvim",
	-- 	priority = 1000,
	-- 	lazy = false,
	-- 	config = function()
	-- 		ColorMyPencils("monochrome")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"bluz71/vim-moonfly-colors",
	-- 	name = "moonfly",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.moonflyWinSeparator = 0
	-- 		vim.g.moonflyItalics = false
	-- 		vim.g.moonflyUndercurls = false
	-- 		ColorMyPencils("moonfly")
	-- 	end,
	-- },

	-- {
	-- 	"jesseleite/nvim-noirbuddy",
	-- 	dependencies = { { "tjdevries/colorbuddy.nvim" } },
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("noirbuddy").setup({
	-- 			preset = "minimal",
	-- 			colors = {
	-- 				-- primary = "#D5A6A8",
	-- 				-- secondary = "#FADADD"
	-- 			},
	-- 			styles = {
	-- 				italic = false,
	-- 				bold = true,
	-- 				underline = true,
	-- 				undercurl = false,
	-- 			},
	-- 		})
	-- 		ColorMyPencils("noirbuddy")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"navarasu/onedark.nvim",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("onedark").setup({
	-- 			transparent = true,
	-- 			lualine = {
	-- 				transparent = true,
	-- 			},
	-- 			ending_tildes = true,
	-- 			term_colors = true,
	-- 		})
	-- 		-- CMD("colorscheme onedark")
	-- 	end,
	-- },

	-- {
	-- 	"rose-pine/neovim",
	-- 	priority = 1000,
	-- 	name = "rose-pine",
	-- 	config = function()
	-- 		require("rose-pine").setup({
	-- 			disable_background = true,
	-- 			dim_inactive_windows = true,
	-- 			styles = { italic = false, transparency = true },
	-- 		})
	-- 		ColorMyPencils("rose-pine-moon")
	-- 	end,
	-- },

	-- {
	-- 	"samharju/serene.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		ColorMyPencils("serene-transparent")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"nikolvs/vim-sunbather",
	-- 	config = function()
	-- 		ColorMyPencils("sunbather")
	-- 		DisableItalic()
	-- 	end,
	-- },

	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	name = "tokyonight",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("tokyonight").setup({
	-- 			dim_inactive = true,
	-- 			transparent = true,
	-- 			terminal_colors = true,
	-- 			styles = {
	-- 				sidebars = "dark",
	-- 				floats = "dark",
	-- 			},
	-- 		})
	-- 		-- CMD("colorscheme tokyonight")
	-- 		-- CMD("colorscheme tokyonight-night")
	-- 		-- CMD("colorscheme tokyonight-storm")
	-- 	end,
	-- },

	-- {
	-- 	"bettervim/yugen.nvim",
	-- 	config = function()
	-- 		ColorMyPencils("yugen")
	-- 		SET_HL(0, "ColorColumn", { bg = "#303030" })
	-- 		SET_HL(0, "StatusLine", { bg = "#151515", fg = "#FAFAFA" })
	-- 		SET_HL(0, "StatusLineNC", { bg = "#151515", fg = "#FAFAFA" })
	-- 		SET_HL(0, "StatusLineTerm", { link = "StatusLine" })
	-- 		SET_HL(0, "StatusLineTermNC", { link = "StatusLineNC" })
	-- 	end,
	-- },

	-- {
	-- 	"zenbones-theme/zenbones.nvim",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.bones_compat = 1
	-- 		vim.g.zenbones_transparent_background = 0
	-- 		vim.g.zenbones_solid_line_nr = 1
	-- 		vim.g.zenbones_italic_comments = 0
	-- 		vim.g.zenbones_lighten_line_nr = 10000000000
	-- 		vim.g.zenbones_solid_float_border = true
	-- 		vim.g.colorize_diagnostic_underline_text = true
	-- 		ColorMyPencils("rosebones")
	-- 		DisableItalic()
	-- 		CMD("hi DiagnosticUnderlineHint gui=underline")
	-- 		CMD("hi DiagnosticUnderlineInfo gui=underline")
	-- 		CMD("hi DiagnosticUnderlineWarn gui=underline")
	-- 		CMD("hi DiagnosticUnderlineError gui=underline")
	-- 		CMD("hi @markup.link gui=none")
	-- 	end,
	-- },
}