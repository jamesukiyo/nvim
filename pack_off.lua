local g = "https://github.com/"
vim.pack.add({
	{ src = g .. "x3ero0/dired.nvim" },
	{ src = g .. "theprimeagen/harpoon", version = "harpoon2" },
	{ src = g .. "mrcjkb/rustacean.nvim" },
	{ src = g .. "theprimeagen/vim-apm" },
	{ src = g .. "nstefan002/screenkey.nvim" },
	{ src = g .. "luckasranarison/nvim-devdocs" },
	{ src = g .. "ej-shafran/compile-mode.nvim" },
	{ src = g .. "vuciv/golf" },
	{ src = g .. "equilibris/nx.nvim" },
	{ src = g .. "topaxi/pipeline.nvim" },
	{ src = g .. "leath-dub/snipe.nvim" },
	{ src = g .. "jamesukiyo/search-this.nvim" },
	{ src = g .. "theprimeagen/vim-be-good" },
})

-- dired
require("dired").setup({
	path_separator = "/",
	show_banner = false,
	show_hidden = true,
	show_dot_dirs = true,
	show_colors = true,
})

-- harpoon
local harpoon = require("harpoon")
harpoon:setup()

MAP("n", "<leader>a", function() harpoon:list():add() end)
MAP("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
MAP("n", "<leader>h", function() harpoon:list():select(1) end)
MAP("n", "<leader>j", function() harpoon:list():select(2) end)
MAP("n", "<leader>k", function() harpoon:list():select(3) end)
MAP("n", "<leader>l", function() harpoon:list():select(4) end)

-- apm
MAP("n", "<leader>apm", require("apm").toggle_monitor())

-- screenkey
require("screenkey").setup({
	win_opts = {
		title = "",
		width = 25,
		height = 1,
		border = "single",
	},
	clear_after = 5,
	group_mappings = true,
	filter = function(keys) return keys end,
	keys = {
		["<TAB>"] = "󰌒",
		["<CR>"] = "󰌑",
		["<ESC>"] = "Esc",
		["<SPACE>"] = "␣",
		["<BS>"] = "󰌥",
		["<DEL>"] = "Del",
		["<LEFT>"] = "",
		["<RIGHT>"] = "",
		["<UP>"] = "",
		["<DOWN>"] = "",
		["<HOME>"] = "Home",
		["<END>"] = "End",
		["<PAGEUP>"] = "PgUp",
		["<PAGEDOWN>"] = "PgDn",
		["<INSERT>"] = "Ins",
		["<F1>"] = "󱊫",
		["<F2>"] = "󱊬",
		["<F3>"] = "󱊭",
		["<F4>"] = "󱊮",
		["<F5>"] = "󱊯",
		["<F6>"] = "󱊰",
		["<F7>"] = "󱊱",
		["<F8>"] = "󱊲",
		["<F9>"] = "󱊳",
		["<F10>"] = "󱊴",
		["<F11>"] = "󱊵",
		["<F12>"] = "󱊶",
		["CTRL"] = "Ctrl",
		["ALT"] = "Alt",
		["SUPER"] = "󰘳",
		["<leader>"] = "<leader>",
	},
})
CMD("Screenkey")

-- devdocs
MAP("n", "<leader>de", ":DevdocsOpenCurrent<CR>")

-- golf

-- nx
require("nx").setup({
	nx_cmd_root = "bunx nx",
})
MAP("n", "<leader>nx", ":Telescope nx actions<CR>")

-- pipeline
require("pipeline").setup({
	split = { size = 80 },
})

-- snipe
require("snipe").setup({
	ui = {
		position = "topleft",
		open_win_override = {
			title = "",
			border = "single",
		},
	},
})
MAP("n", "<leader>fb", function() require("snipe").open_buffer_menu() end)

-- compile-mode
MAP("n", "<leader>co", ":vert Compile<cr>")
MAP("n", "<leader>cr", ":vert Recompile<cr>")

-- search-this
require("search-this").setup({
	default_engine = "ddg",
})
