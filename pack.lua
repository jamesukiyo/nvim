local g = "https://github.com/"
vim.pack.add({
	-- deps
	{ src = g .. "nvim-treesitter/nvim-treesitter" }, -- treesitter as early as possible
	{ src = g .. "nvim-lua/plenary.nvim" },
	{ src = g .. "m00qek/baleia.nvim", version = vim.version.range("1.3") },
	{ src = g .. "muniftanjim/nui.nvim" },
	{ src = g .. "nvim-tree/nvim-web-devicons" },
	{ src = g .. "sindrets/diffview.nvim" },
	{ src = g .. "nvzone/volt" },

	-- plugins
	{ src = g .. "folke/snacks.nvim" },
	{ src = g .. "windwp/nvim-autopairs" },
	{ src = g .. "saghen/blink.cmp", version = vim.version.range("1.6") },
	{ src = g .. "uga-rosa/ccc.nvim" },
	{ src = g .. "stevearc/conform.nvim" },
	{ src = g .. "saecki/crates.nvim" },
	{ src = g .. "eliseshaffer/darklight.nvim" },
	{ src = g .. "elihunter173/dirbuf.nvim" },
	{ src = g .. "vxpm/ferris.nvim" },
	{ src = g .. "j-hui/fidget.nvim" },
	{ src = g .. "nvim-lualine/lualine.nvim" },
	{ src = g .. "echasnovski/mini.nvim" },
	{ src = g .. "neogitorg/neogit" },
	{ src = g .. "shortcuts/no-neck-pain.nvim" },
	{ src = g .. "vuki656/package-info.nvim" },
	{ src = g .. "epwalsh/pomo.nvim" },
	{ src = g .. "jorenar/minisnip" },
	{ src = g .. "jamesukiyo/quicksnip.vim" },
	{ src = g .. "meanderingprogrammer/render-markdown.nvim" },
	{ src = g .. "b0o/schemastore.nvim" },
	{ src = g .. "aasim-a/scrolleof.nvim" },
	{ src = g .. "supermaven-inc/supermaven-nvim" },
	{ src = g .. "nvim-telescope/telescope.nvim" },
	{ src = g .. "rachartier/tiny-inline-diagnostic.nvim" },
	{ src = g .. "folke/todo-comments.nvim" },
	{ src = g .. "folke/trouble.nvim" },
	{ src = g .. "folke/twilight.nvim" },
	{ src = g .. "nvzone/typr" },
	{ src = g .. "mbbill/undotree" },
	{ src = g .. "vimwiki/vimwiki" },
	{ src = g .. "natecraddock/workspaces.nvim" },
	{ src = g .. "folke/zen-mode.nvim" },
	{ src = g .. "matbme/jabs.nvim" },
})

-- treesitter
require("nvim-treesitter.configs").setup({
	sync_install = false,
	modules = {},
	ignore_install = {},
	ensure_installed = {
		"javascript",
		"typescript",
		"svelte",
		"markdown",
		"css",
		"html",
		"lua",
		"vim",
		"json",
		"yaml",
		"vimdoc",
		"go",
		"http",
		"rust",
	},
	highlight = { enable = true },
	auto_install = true,
	indent = { enable = true },
})

-- treesitter-dependent plugins
vim.pack.add({
	{ src = g .. "code-biscuits/nvim-biscuits" },
	{ src = g .. "nvim-treesitter/nvim-treesitter-context" },
	{ src = g .. "nvim-treesitter/nvim-treesitter-textobjects" },
	{ src = g .. "windwp/nvim-ts-autotag" },
	{ src = g .. "joosepalviste/nvim-ts-context-commentstring" },
})

-- treesitter-context
require("treesitter-context").setup({
	max_lines = 3,
	separator = "-",
})

SET_HL(0, "TreesitterContextLineNumberBottom", {
	fg = "#FFFFFF",
	bg = "NONE",
})
SET_HL(0, "TreesitterContextSeparator", {
	fg = "#363636",
	bg = "NONE",
})

-- treesitter-textobjects

require("snacks").setup({
	profiler = {},
})

-- autopairs
require("nvim-autopairs").setup({
	disable_filetype = { "typr" },
})

-- biscuits
require("nvim-biscuits").setup({
	cursor_line_only = true,
	prefix_string = " ",
	toggle_keybind = "<leader>bi",
	show_on_start = true,
})

-- blink
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
						return vim.tbl_filter(
							function(bufnr) return vim.bo[bufnr].buftype == "" end,
							vim.api.nvim_list_bufs()
						)
					end,
				},
			},
		},
	},
})

-- ccc
require("ccc").setup({
	highlighter = {
		auto_enable = false,
		lsp = true,
	},
})

MAP("n", "<leader>ccc", "<cmd>CccHighlighterToggle<CR>")

-- conform
require("conform").setup({
	formatters = {
		-- otherwise it tries to use .cmd for some reason
		prettier = {
			command = "prettier.exe",
		},
		prettierd = {
			command = "prettierd.exe",
		},
	},
	formatters_by_ft = {
		astro = { "prettierd", "prettier", stop_after_first = true },
		go = { "gofumpt", "goimports", stop_after_first = true },
		javascript = { "prettierd", "prettier", stop_after_first = true },
		javascriptreact = { "prettierd", "prettier", stop_after_first = true },
		typescript = { "prettierd", "prettier", stop_after_first = true },
		typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		json = { "prettierd", "prettier", stop_after_first = true },
		svelte = { "prettierd", "prettier", stop_after_first = true },
		vue = { "prettierd", "prettier", stop_after_first = true },
		yaml = { "prettierd", "prettier", stop_after_first = true },
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

-- crates
require("crates").setup({})

-- darklight
require("darklight").setup({
	mode = "custom",
	light_mode_callback = function()
		ColorMyPencils("rusticated", "light", true)
		DisableBold()
		DisableItalic()
		DisableUndercurl()
	end,
	dark_mode_callback = function()
		ColorMyPencils("rasmus", "dark", true)
		DisableBold()
		DisableItalic()
		DisableUndercurl()
	end,
})

-- dirbuf
require("dirbuf").setup({
	sort_order = "directories_first",
	write_cmd = "DirbufSync -confirm",
	show_hidden = true,
})

MAP("n", "<C-s>", function()
	if vim.bo.filetype == "dirbuf" then
		CMD("DirbufQuit")
	else
		CMD("Dirbuf")
	end
end)
MAP("n", "-", ":Dirbuf<CR>")

-- ferris
require("ferris").setup({
	create_commands = true,
	url_handler = "start",
})

-- fidget
require("fidget").setup({
	progress = {
		display = {
			done_ttl = 10,
		},
	},
	notification = {
		override_vim_notify = true,
		window = {
			winblend = 0,
			zindex = 1000,
			max_width = 60,
		},
	},
})

-- lualine
local function file_info()
	local fe = vim.o.fileencoding
	local ff = vim.o.fileformat

	if fe == "" or ff == "" then
		return ""
	elseif fe ~= "utf-8" and ff ~= "unix" then
		return fe .. " :: " .. ff .. " :: "
	elseif fe ~= "utf-8" and ff == "unix" then
		return fe .. " :: "
	elseif fe == "utf-8" and ff ~= "unix" then
		return ff .. " :: "
	else
		return ""
	end
end

local function lualine_custom_no_icons()
	local fe = vim.o.fileencoding
	local ff = vim.o.fileformat
	local ft = vim.o.filetype

	if fe == "" or ff == "" or ft == "" then
		return ""
	elseif fe ~= "utf-8" and ff ~= "unix" then
		return fe .. " :: " .. ff .. " :: " .. ft
	elseif fe ~= "utf-8" and ff == "unix" then
		return fe .. " :: " .. ft
	elseif fe == "utf-8" and ff ~= "unix" then
		return ff .. " :: " .. ft
	else
		return ft
	end
end

local function pomo_timer()
	local ok, pomo = pcall(require, "pomo")
	if not ok then return "" end

	local timer = pomo.get_first_to_finish()
	if timer == nil then return "" end

	return "󰄉 " .. tostring(timer)
end

local filename = { "filename", show_filename_only = false, path = 1 }
local diagnostics = {
	"diagnostics",
	symbols = {
		error = "",
		warn = "",
		info = "",
		hint = "",
	},
}

require("lualine").setup({
	options = {
		theme = "auto",
		disabled_filetypes = { "no-neck-pain" },
		section_separators = "",
		component_separators = "",
		icons_enabled = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", diagnostics },
		lualine_c = { filename, "diff" },
		lualine_x = { pomo_timer },
		lualine_y = { file_info, "filetype" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", diagnostics },
		lualine_c = { filename, "diff" },
		lualine_x = { pomo_timer },
		lualine_y = { file_info, "filetype" },
		lualine_z = { "location" },
	},
})

-- mini-ai
require("mini.ai").setup({})

-- mini-bufremove
require("mini.bufremove").setup({})
MAP("n", "<leader>qb", function() CMD("lua MiniBufremove.delete()") end)

-- mini-diff
require("mini.diff").setup({
	view = {
		style = "number",
	},
	mappings = {
		apply = "",
		reset = "",
		textobject = "",
		goto_first = "",
		goto_prev = "",
		goto_next = "",
		goto_last = "",
	},
})

-- mini-surround
require("mini.surround").setup({})

-- neogit
require("neogit").setup({
	integrations = {
		telescope = true,
		diffview = true,
	},
	commit_editor = {
		staged_diff_split_kind = "vsplit",
	},
	commit_select_view = { kind = "vsplit" },
})

MAP("n", "<leader>g", ":Neogit<CR>")

-- no-neck-pain
require("no-neck-pain").setup({
	width = 110,
	autocmds = { enableOnVimEnter = true, skipEnteringNoNeckPainBuffer = true },
	buffers = { wo = { fillchars = "eob: " } },
})

-- package-info
require("package-info").setup({
	autostart = true,
	hide_unstable_versions = true,
	notifications = false,
	icons = {
		enable = true,
		style = {
			up_to_date = "   ",
			outdated = "   ",
			invalid = "   ",
		},
	},
})

SET_HL(0, "PackageInfoUpToDateVersion", { fg = "#3c4048" })
SET_HL(0, "PackageInfoOutdatedVersion", { fg = "#d19a66" })
SET_HL(0, "PackageInfoInvalidVersion", { fg = "#ee4b2b" })

CMD("lua require('package-info').show({ force = true })")

-- pomo
require("pomo").setup({
	update_interval = 500,
	sessions = {
		pomodoro = {
			{ name = "Work", duration = "25m" },
			{ name = "Break", duration = "5m" },
			{ name = "Work", duration = "25m" },
			{ name = "Break", duration = "5m" },
			{ name = "Work", duration = "25m" },
			{ name = "Break", duration = "15m" },
		},
	},
	notifiers = {
		{
			name = "Default",
			opts = {
				sticky = false,
			},
		},
		-- {
		-- 	name = "System", -- Doesn't work on Windows yet
		-- },
	},
})

-- quicksnip
MAP("n", "<leader>sp", ":SnipPick<CR>")
MAP("n", "<leader>sc", ":SnipCurrent<CR>")

-- render-markdown
require("render-markdown").setup({
	completions = { blink = { enabled = true } },
})

-- scrolleof
require("scrollEOF").setup({})

-- supermaven
require("supermaven-nvim").setup({})

-- telescope
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

MAP("n", "<leader>fc", function() require("telescope.builtin").resume() end)
MAP("n", "<leader>ff", function() require("telescope.builtin").find_files() end)
MAP("n", "<leader>fg", function() require("telescope.builtin").live_grep() end)
MAP("n", "<leader>ft", function() require("telescope.builtin").treesitter() end)
MAP("n", "<leader>fr", function() require("telescope.builtin").registers() end)
MAP("n", "<leader>fw", function()
	local builtin = require("telescope.builtin")
	local word = vim.fn.expand("<cword>")
	builtin.grep_string({ search = word })
end)
MAP("n", "<leader>fW", function()
	local builtin = require("telescope.builtin")
	local word = vim.fn.expand("<cWORD>")
	builtin.grep_string({ search = word })
end)
MAP("n", "<leader>fs", function()
	local builtin = require("telescope.builtin")
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- tiny-inline-diagnostic
require("tiny-inline-diagnostic").setup({
	preset = "minimal",
	transparent_bg = true,
	transparent_cursorline = false,
	signs = {
		arrow = "",
		up_arrow = "",
	},
	options = {
		show_source = { enabled = true },
		multilines = { enabled = true, always_show = true },
		throttle = 100,
	},
})

-- todo-comments
require("todo-comments").setup({
	signs = false,
	highlight = {
		before = "",
		keyword = "wide",
		after = "",
	},
})
MAP("n", "<leader>td", "<cmd>TodoTelescope<CR>")

-- trouble
require("trouble").setup({
	auto_close = true,
	modes = {
		diagnostics = { -- Configure symbols mode
			win = {
				size = 0.3, -- 30% of the window})
				-- },
				--preview = {
				--    type = "float",
				--    relative = "win",
				--    title = "Preview",
				--    border = "single",
				--size = { width = 0.25, height = 0.4 },
				--    zindex = 200,
				--},
			},
		},
	},
})

MAP("n", "<leader>tr", "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>")
MAP("n", "<leader>te", "<cmd>Trouble diagnostics toggle focus=true<cr>")
MAP("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>")

-- autotag
require("nvim-ts-autotag").setup({
	opts = {
		enable_close_on_slash = true,
	},
})

-- context-commentstring

-- twilight
require("twilight").setup({
	dimming = {
		alpha = 0.4,
	},
})

-- typr
require("typr").setup({
	config = {
		on_attach = function()
			vim.bo.wrap = false
			vim.bo.completion = false
		end,
	},
})

-- undotree
MAP("n", "<leader>u", "<cmd>UndotreeToggle<CR>")

-- be-good

-- workspaces
require("workspaces").setup({ auto_open = true })
MAP("n", "<leader>fp", ":Telescope workspaces<CR>")
require("telescope").load_extension("workspaces")

-- zen-mode
require("zen-mode").setup({
	on_open = function() vim.wo.colorcolumn = "0" end,
	window = {
		width = 80,
		height = 1,
	},
	plugins = {
		options = {
			enabled = true,
			showcmd = true,
			ruler = false,
			laststatus = 0,
		},
		twilight = { enabled = true },
		gitsigns = { enabled = false },
	},
})

-- devdocs

-- dirbuf

-- fidget

-- golf

-- render-markdown

-- schemastore

-- scrollEOF

-- search-this

-- tiny-inline-diagnostic

-- autotag

-- context-commentstring

-- jabs
require("jabs").setup({
	position = "corner",
	width = 50,
	height = 10,
	border = "shadow",
	offset = {
		top = 2,
		bottom = 2,
		left = 2,
		right = 2,
	},
	sort_mru = true,
	split_filename = true,
	split_filename_path_width = 0,
	use_devicons = true,
	symbols = {
		current = "C",
		split = "S",
		alternate = "A",
		hidden = "H",
		locked = "L",
		ro = "R",
		edited = "E",
		terminal = "T",
		default_file = "D",
		terminal_symbol = ">_",
	},
	keymap = {
		close = "<c-d>",
		jump = "<space>",
		h_split = "h",
		v_split = "v",
		preview = "P",
	},
	highlight = {
		current = "Title",
		hidden = "StatusLineNC",
		split = "WarningMsg",
		alternate = "StatusLine",
	},
})

MAP("n", "<leader>fb", ":JABSOpen<CR>")
