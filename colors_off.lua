local g = "https://github.com/"
vim.pack.add({
	{ src = g .. "andreasvc/vim-256noir" },
	{ src = g .. "catppuccin/nvim" },
	{ src = g .. "aliqyan-21/darkvoid.nvim" },
	{ src = g .. "yorickpeterse/nvim-grey" },
	{ src = g .. "thimc/gruber-darker.nvim" },
	{ src = g .. "ellisonleao/gruvbox.nvim" },
	{ src = g .. "jamesukiyo/jimbo.vim" },
	{ src = g .. "slugbyte/lackluster.nvim" },
	{ src = g .. "dasupradyumna/midnight.nvim" },
	{ src = g .. "kdheepak/monochrome.nvim" },
	{ src = g .. "bluz71/vim-moonfly-colors" },
	{ src = g .. "jesseleite/nvim-noirbuddy" },
	{ src = g .. "tjdevries/colorbuddy.nvim" },
	{ src = g .. "navarasu/onedark.nvim" },
	{ src = g .. "rose-pine/neovim" },
	{ src = g .. "samharju/serene.nvim" },
	{ src = g .. "nikolvs/vim-sunbather" },
	{ src = g .. "folke/tokyonight.nvim" },
	{ src = g .. "bettervim/yugen.nvim" },
	{ src = g .. "zenbones-theme/zenbones.nvim" },
})

-- 256noir
local highlights_256noir = {
	"hi Normal cterm=NONE ctermfg=250 ctermbg=NONE gui=NONE guifg=#bcbcbc guibg=NONE",
	"hi Keyword cterm=NONE ctermfg=255 ctermbg=NONE gui=NONE guifg=#eeeeee guibg=NONE",
	"hi Constant cterm=NONE ctermfg=252 ctermbg=NONE gui=NONE guifg=#d0d0d0 guibg=NONE",
	"hi String cterm=NONE ctermfg=245 ctermbg=NONE gui=NONE guifg=#8a8a8a guibg=NONE",
	"hi Comment cterm=NONE ctermfg=240 ctermbg=NONE gui=NONE guifg=#585858 guibg=NONE",
	"hi Number cterm=NONE ctermfg=196 ctermbg=NONE gui=NONE guifg=#ff0000 guibg=NONE",
	"hi SignColumn cterm=NONE ctermfg=124 ctermbg=NONE gui=NONE guifg=#af0000 guibg=NONE",
	"hi SpellRare cterm=NONE ctermfg=124 ctermbg=NONE gui=NONE guifg=#af0000 guibg=NONE",
	"hi StatusLine cterm=bold ctermfg=245 ctermbg=233 gui=bold guifg=#8a8a8a guibg=#121212",
	"hi StatusLineNC cterm=NONE ctermfg=236 ctermbg=233 gui=NONE guifg=#303030 guibg=#121212",
	"hi Visual cterm=NONE ctermfg=250 ctermbg=236 gui=NONE guifg=#bcbcbc guibg=#303030",
	"hi Normal cterm=NONE ctermfg=Gray ctermbg=NONE",
	"hi Keyword cterm=NONE ctermfg=White ctermbg=NONE",
	"hi Constant cterm=NONE ctermfg=Gray ctermbg=NONE",
	"hi String cterm=NONE ctermfg=Gray ctermbg=NONE",
	"hi Comment cterm=NONE ctermfg=DarkGray ctermbg=NONE",
	"hi Number cterm=NONE ctermfg=Red ctermbg=NONE",
	"hi SignColumn cterm=NONE ctermfg=Red ctermbg=NONE",
	"hi SpellRare cterm=NONE ctermfg=Red ctermbg=NONE",
	"hi StatusLine cterm=bold ctermfg=Gray ctermbg=Black",
	"hi StatusLineNC cterm=NONE ctermfg=DarkGray ctermbg=Black",
	"hi Visual cterm=NONE ctermfg=Gray ctermbg=DarkGray",
}

for _, hl in ipairs(highlights_256noir) do
	CMD(hl)
end

-- catppuccin
require("catppuccin").setup({
	flavour = "mocha",
	background = { dark = "mocha" },
	transparent = true,
	term_colors = true,
	dim_inactive = {
		enabled = true,
		shade = "dark",
		percentage = 0.5,
	},
	show_end_of_buffer = true,
	integrations = {
		telescope = { enabled = true },
		mini = { enabled = true, indentscope_color = "lavender" },
		mason = true,
		harpoon = true,
		cmp = true,
		treesitter = true,
		which_key = true,
		gitsigns = true,
	},
	custom_highlights = function(colors)
		return {
			LineNr = { fg = colors.overlay1 },
		}
	end,
})

-- darkvoid
require("darkvoid").setup({
	transparent = true,
	glow = false,
	show_end_of_buffer = true,
	colors = {
		plugins = {
			lualine = false,
		},
	},
})

-- grey

-- gruber-darker
local function disable_gruber_undercurl()
	local hl_groups = {
		"GruberDarkerRedUnderline",
		"GruberDarkerGreenUnderline",
		"GruberDarkerYellowUnderline",
		"GruberDarkerQuartzUnderline",
		"GruberDarkerNiagaraUnderline",
		"GruberDarkerWisteriaUnderline",
	}
	for _, hl in ipairs(hl_groups) do
		CMD.highlight(hl .. " gui=underline cterm=underline")
	end
end

require("gruber-darker").setup({
	transparent = true,
})
disable_gruber_undercurl()

-- gruvbox
require("gruvbox").setup({
	terminal_colors = true,
	dim_inactive = true,
	transparent = true,
})

-- jimbo
CMD("colorscheme jimbo")

-- lackluster
require("lackluster").setup({
	disable_plugin = {
		todo_comments = true,
	},
	tweak_ui = {
		disable_undercurl = true,
		enable_end_of_buffer = true,
	},
	tweak_background = {
		normal = "none",
		telescope = "none",
		menu = "none",
		popup = "none",
	},
	tweak_highlight = {
		["@function"] = {
			bold = true,
		},
		["@keyword"] = {
			bold = true,
		},
	},
	tweak_syntax = {
		comment = require("lackluster").color.gray5,
	},
})

-- midnight

-- monochrome

-- moonfly

-- noirbuddy
require("noirbuddy").setup({
	preset = "minimal",
	colors = {
		-- primary = "#D5A6A8",
		-- secondary = "#FADADD"
	},
	styles = {
		italic = false,
		bold = true,
		underline = true,
		undercurl = false,
	},
})

-- onedark
require("onedark").setup({
	transparent = true,
	lualine = {
		transparent = true,
	},
	ending_tildes = true,
	term_colors = true,
})
-- CMD("colorscheme onedark")

-- rose-pine
require("rose-pine").setup({
	disable_background = true,
	dim_inactive_windows = true,
	styles = { italic = false, transparency = true },
})

-- serene

-- sunbather

-- tokyonight
require("tokyonight").setup({
	dim_inactive = true,
	transparent = true,
	terminal_colors = true,
	styles = {
		sidebars = "dark",
		floats = "dark",
	},
})
-- CMD("colorscheme tokyonight")
-- CMD("colorscheme tokyonight-night")
-- CMD("colorscheme tokyonight-storm")

-- yugen

local highlights_yugen = {
	ColorColumn = { bg = "#303030" },
	StatusLine = { bg = "#151515", fg = "#FAFAFA" },
	StatusLineNC = { bg = "#151515", fg = "#FAFAFA" },
	StatusLineTerm = { link = "StatusLine" },
	StatusLineTermNC = { link = "StatusLineNC" },
}

for group, opts in pairs(highlights_yugen) do
	SET_HL(0, group, opts)
end

-- zenbones

local highlights_zenbones = {
	DiagnosticUnderlineHint = "gui=underline",
	DiagnosticUnderlineInfo = "gui=underline",
	DiagnosticUnderlineWarn = "gui=underline",
	DiagnosticUnderlineError = "gui=underline",
	["@markup.link"] = "gui=none",
}

for group, opts in pairs(highlights_zenbones) do
	CMD("hi " .. group .. " " .. opts)
end
