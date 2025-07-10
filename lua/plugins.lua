return {
	-- Completion and snippets
	{
		"saghen/blink.cmp",
		event = "InsertEnter",
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
	},

	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({
				disable_filetype = { "typr" },
			})
		end,
	},

	{
		"Jorenar/miniSnip",
		event = "InsertEnter",
	},

	{
		"jamesukiyo/quicksnip.vim",
		cmd = { "SnipCurrent", "SnipPick" },
		keys = { "<leader>sp", "<leader>sc" },
		config = function()
			CMD([[
				let g:miniSnip_dirs = ['~/.vim/snippets']
				let g:miniSnip_trigger = '<C-c>'
				let g:miniSnip_complkey = ''
				let g:miniSnip_extends = {
				\ "html": ["svelte"],
				\ "svelte": ["typescript", "html"],
				\ "typescript": ["javascript"],
				\ "javascript": ["typescript"],
				\ }
				map <leader>sc :SnipCurrent<CR>
				map <leader>sp :SnipPick<CR>
			]])
		end,
	},

	{
		"supermaven-inc/supermaven-nvim",
		event = "InsertEnter",
		config = function()
			require("supermaven-nvim").setup({})
		end,
	},

	-- Language and syntax
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = "BufRead",
		config = function()
			require("nvim-treesitter.configs").setup({
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
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-context",
		event = "BufRead",
		config = function()
			require("treesitter-context").setup({
				max_lines = 3,
				separator = "-",
			})

			SET_HL(0, "TreesitterContextLineNumberBottom", {
				fg = "#FFFFFF",
			})
			SET_HL(0, "TreesitterContextSeparator", {
				fg = "#363636",
			})
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter-textobjects",
		event = "BufRead",
	},

	{
		"windwp/nvim-ts-autotag",
		event = "InsertEnter",
		config = function()
			require("nvim-ts-autotag").setup({
				opts = {
					enable_close_on_slash = true,
				},
			})
		end,
	},

	{
		"JoosepAlviste/nvim-ts-context-commentstring",
		event = "BufRead",
	},

	{
		"code-biscuits/nvim-biscuits",
		ft = { "rust", "javascript", "typescript", "shell" },
		config = function()
			require("nvim-biscuits").setup({
				cursor_line_only = true,
				prefix_string = " ",
				toggle_keybind = "<leader>bi",
				show_on_start = false,
			})
		end,
	},

	-- LSP and diagnostics
	{
		"j-hui/fidget.nvim",
		event = "VeryLazy",
		config = function()
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
		end,
	},

	{
		"rachartier/tiny-inline-diagnostic.nvim",
		event = "BufReadPost",
		config = function()
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
		end,
	},

	{
		"folke/trouble.nvim",
		event = "LspAttach",
		config = function()
			require("trouble").setup({
				auto_close = true,
				modes = {
					diagnostics = {
						win = {
							size = 0.3,
						},
					},
				},
			})
			MAP(
				"n",
				"<leader>tr",
				"<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
				{ desc = "Trouble diagonostics current file" }
			)
			MAP(
				"n",
				"<leader>te",
				"<cmd>Trouble diagnostics toggle focus=true<cr>",
				{ desc = "Trouble diagonostics all files" }
			)
			MAP(
				"n",
				"<leader>tq",
				"<cmd>Trouble qflist toggle<cr>",
				{ desc = "Trouble quickfix list" }
			)
		end,
	},

	{
		"b0o/schemastore.nvim",
		event = "BufRead",
	},

	-- Formatting and linting
	{
		"stevearc/conform.nvim",
		event = "BufRead",
		config = function()
			require("conform").setup({
				formatters = {
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
				},
				format_after_save = {
					async = true,
				},
			})
		end,
	},

	-- Language-specific
	{
		"saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		config = function()
			require("crates").setup({})
		end,
	},

	{
		"vxpm/ferris.nvim",
		ft = "rust",
		config = function()
			require("ferris").setup({
				create_commands = true,
				url_handler = "start",
			})
		end,
	},

	{
		"vuki656/package-info.nvim",
		event = "BufRead package.json",
		config = function()
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
		end,
	},

	{
		"Equilibris/nx.nvim",
		keys = {
			{ "<leader>nx", ":Telescope nx actions<CR>", desc = "view nx actions" },
		},
		config = function()
			require("nx").setup({
				nx_cmd_root = "bunx nx",
			})
		end,
	},

	-- UI and navigation
	{
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
	},

	{
		"leath-dub/snipe.nvim",
		keys = { "<leader>fb" },
		config = function()
			local snipe = require("snipe")
			snipe.setup({
				ui = {
					position = "topleft",
					open_win_override = {
						title = "",
						border = "single",
					},
				},
			})
			MAP("n", "<leader>fb", snipe.open_buffer_menu)
		end,
	},

	{
		"elihunter173/dirbuf.nvim",
		cmd = "Dirbuf",
		keys = { "<C-s>", "-" },
		config = function()
			require("dirbuf").setup({
				sort_order = "directories_first",
				write_cmd = "DirbufSync -confirm",
				show_hidden = true,
			})

			local function toggle_dirbuf()
				if vim.bo.filetype == "dirbuf" then
					CMD("DirbufQuit")
				else
					CMD("Dirbuf")
				end
			end

			MAP("n", "<C-s>", toggle_dirbuf, { desc = "Open dirbuf" })
		end,
	},

	{
		"natecraddock/workspaces.nvim",
		cmd = "Telescope workspaces",
		keys = { "<leader>fp" },
		config = function()
			require("workspaces").setup({
				auto_open = true,
			})
			require("telescope").load_extension("workspaces")
			MAP(
				"n",
				"<leader>fp",
				":Telescope workspaces<CR>",
				{ desc = "open project list" }
			)
		end,
	},

	-- Git integration
	{
		"NeogitOrg/neogit",
		dependencies = { "sindrets/diffview.nvim" },
		cmd = "Neogit",
		keys = { "<leader>g" },
		config = function()
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

			vim.o.showtabline = 0
			MAP("n", "<leader>g", ":Neogit<CR>", { desc = "open neogit" })
		end,
	},

	-- Mini.nvim plugins
	{
		"echasnovski/mini.ai",
		event = "BufRead",
		config = function()
			require("mini.ai").setup()
		end,
	},

	{
		"echasnovski/mini.bufremove",
		event = "BufRead",
		config = function()
			require("mini.bufremove").setup()

			MAP("n", "<leader>qb", function()
				CMD("lua MiniBufremove.delete()")
			end, { desc = "close buffer" })
		end,
	},

	{
		"echasnovski/mini.diff",
		event = "BufRead",
		config = function()
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
		end,
	},

	{
		"echasnovski/mini.surround",
		event = "BufRead",
		config = function()
			require("mini.surround").setup()
		end,
	},

	-- Statusline
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		priority = 900,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
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
			CMD("set noshowmode")
		end,
	},

	-- UI enhancements
	{
		"shortcuts/no-neck-pain.nvim",
		lazy = false,
		priority = 1001,
		config = function()
			require("no-neck-pain").setup({
				width = 110,
				autocmds = {
					enableOnVimEnter = true,
					skipEnteringNoNeckPainBuffer = true,
				},
				buffers = {
					wo = {
						fillchars = "eob: ",
					},
				},
			})
		end,
	},

	{
		"folke/zen-mode.nvim",
		cmd = "ZenMode",
		config = function()
			require("zen-mode").setup({

				on_open = function()
					vim.wo.colorcolumn = "0"
				end,

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
		end,
	},

	{
		"folke/twilight.nvim",
		cmd = "Twilight",
		config = function()
			require("twilight").setup({
				dimming = {
					alpha = 0.4,
				},
			})
		end,
	},

	{
		"NStefan002/screenkey.nvim",
		cmd = { "Screenkey" },
		branch = "main",
		config = function()
			require("screenkey").setup({
				win_opts = {
					title = "",
					width = 25,
					height = 1,
					border = "single",
				},
				clear_after = 5,
				group_mappings = true,
				filter = function(keys)
					return keys
				end,
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
		end,
	},

	{
		"Aasim-A/scrollEOF.nvim",
		event = { "WinScrolled" },
		config = function()
			require("scrollEOF").setup({})
		end,
	},

	{
		"MeanderingProgrammer/render-markdown.nvim",
		ft = "markdown",
		config = function()
			require("render-markdown").setup({
				completions = { blink = { enabled = true } },
			})
		end,
	},

	-- Utilities
	{
		"uga-rosa/ccc.nvim",
		cmd = "CccHighlighterToggle",
		config = function()
			require("ccc").setup({
				highlighter = {
					auto_enable = false,
					lsp = true,
				},
			})
			MAP("n", "<leader>ccc", "<cmd>CccHighlighterToggle<CR>", { silent = true })
		end,
	},

	{
		"ej-shafran/compile-mode.nvim",
		cmd = "Compile",
		keys = { "<leader>co", "<leader>cr" },
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "m00qek/baleia.nvim", tag = "v1.3.0" },
		},
		config = function()
			vim.g.compile_mode = {
				baleia_setup = true,
				default_command = "",
				recompile_no_fail = true,
			}
			MAP("n", "<leader>co", ":vert Compile<cr>", { desc = "run a compile cmd" })
			MAP(
				"n",
				"<leader>cr",
				":vert Recompile<cr>",
				{ desc = "rerun last compile cmd" }
			)
		end,
	},

	{
		"luckasRanarison/nvim-devdocs",
		cmd = { "DevdocsOpenCurrent", "DevdocsOpen" },
		keys = { "<leader>de" },
		config = function()
			require("nvim-devdocs").setup({})
			MAP("n", "<leader>de", ":DevdocsOpenCurrent<CR>", { desc = "open dev docs" })
		end,
	},

	{
		"folke/todo-comments.nvim",
		event = "BufRead",
		config = function()
			require("todo-comments").setup({
				signs = false,
				highlight = {
					before = "",
					keyword = "wide",
					after = "",
				},
			})
			MAP(
				"n",
				"<leader>td",
				":TodoTelescope<CR>",
				{ desc = "todo list in telescope" }
			)
		end,
	},

	{
		"mbbill/undotree",
		event = "BufRead",
		config = function()
			MAP("n", "<leader>u", CMD.UndotreeToggle)
		end,
	},

	{
		"jamesukiyo/search-this.nvim",
		name = "search-this",
		cmd = { "SearchThis", "SearchThisNormal" },
		keys = "<leader>st",
		config = function()
			require("search-this").setup({
				default_engine = "ddg",
			})
		end,
	},

	{
		"topaxi/pipeline.nvim",
		cmd = "Pipeline",
		opts = {
			split = { size = 80 },
		},
	},

	{
		"epwalsh/pomo.nvim",
		version = "*",
		lazy = true,
		cmd = { "TimerStart", "TimerRepeat", "TimerSession" },
		config = function()
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
				},
			})
		end,
	},

	-- Games and fun
	{
		"vuciv/golf",
		cmd = "Golf",
	},

	{
		"nvzone/typr",
		dependencies = "nvzone/volt",
		opts = {
			config = {
				on_attach = function()
					vim.bo.wrap = false
					vim.bo.completion = false
				end,
			},
		},
		cmd = { "Typr", "TyprStats" },
	},

	{
		"ThePrimeagen/vim-be-good",
		cmd = "VimBeGood",
	},

	{
		"vimwiki/vimwiki",
		keys = { "<leader>ww", "<leader>wi" },
		config = function()
			CMD([[
				let g:vimwiki_option_diary_path = './diary/'
				let g:vimwiki_global_ext = 0
				let g:vimwiki_option_nested_syntaxes = {'svelte': 'svelte', 'typescript': 'ts'}
				let g:vimwiki_list = [{'path': '~/vimwiki/james/', 'name': 'james', 'syntax': 'markdown', 'ext': 'md'},
				\ {'path': '~/vimwiki/healgorithms/', 'name': 'healgorithms', 'syntax': 'markdown', 'ext': 'md', 'auto_toc': 1}]
			]])
		end,
	},

	-- Commented out / disabled plugins
	-- {
	-- 	"X3eRo0/dired.nvim",
	-- 	dependencies = { "MunifTanjim/nui.nvim" },
	-- 	config = function()
	-- 		require("dired").setup({
	-- 			hide_details = false,
	-- 			sort_order = "dirs",
	-- 			show_icons = false,
	-- 			show_hidden = true,
	-- 			show_banner = true,
	-- 		})
	-- 		local function toggle_dired()
	-- 			if vim.bo.filetype == "dired" then
	-- 				CMD("DiredQuit")
	-- 			else
	-- 				CMD("Dired")
	-- 			end
	-- 		end
	-- 		MAP("n", "<C-s>", toggle_dired, { desc = "Open Dired" })
	-- 		MAP("n", "-", ":Dired<cr>", { desc = "Open Dired" })
	-- 	end,
	-- },

	-- {
	-- 	"ThePrimeagen/harpoon",
	-- 	branch = "harpoon2",
	-- 	keys = { "<leader>a" },
	-- 	config = function()
	-- 		local harpoon = require("harpoon")
	-- 		harpoon:setup({
	-- 			settings = {
	-- 				save_on_toggle = true,
	-- 				save_on_ui_close = true,
	-- 			},
	-- 		})
	-- 		MAP(
	-- 			"n",
	-- 			"<leader>a",
	-- 			function() harpoon:list():add() end,
	-- 			{ desc = "Add to harpoon" }
	-- 		)
	-- 		MAP(
	-- 			"n",
	-- 			"<C-e>",
	-- 			function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
	-- 			{ desc = "Harpoon menu" }
	-- 		)
	-- 		MAP("n", "<Leader>h", function() harpoon:list():select(1) end)
	-- 		MAP("n", "<Leader>j", function() harpoon:list():select(2) end)
	-- 		MAP("n", "<Leader>k", function() harpoon:list():select(3) end)
	-- 		MAP("n", "<Leader>l", function() harpoon:list():select(4) end)
	-- 	end,
	-- },

	-- {
	-- 	"matbme/JABS.nvim",
	-- 	enabled = true,
	-- 	dependencies = { "nvim-tree/nvim-web-devicons" },
	-- 	cmd = "JABSOpen",
	-- 	keys = { "<leader>fb" },
	-- 	config = function()
	-- 		require("jabs").setup({
	-- 			position = "center",
	-- 			border = "single",
	-- 			sort_mru = true,
	-- 			symbols = {
	-- 				current = "C",
	-- 				split = "S",
	-- 				alternate = "A",
	-- 				hidden = "H",
	-- 				locked = "L",
	-- 				ro = "R",
	-- 				edited = "E",
	-- 				terminal = "T",
	-- 				default_file = "D",
	-- 				terminal_symbol = ">_",
	-- 			},
	-- 			keymap = {
	-- 				h_split = "s",
	-- 				v_split = "v",
	-- 				close = "dd",
	-- 			},
	-- 		})
	-- 		MAP("n", "<leader>fb", ":JABSOpen<CR>")
	-- 	end,
	-- },

	-- {
	-- 	"mrcjkb/rustaceanvim",
	-- 	version = "^6",
	-- 	lazy = false,
	-- 	config = function()
	-- 		vim.g.rustaceanvim = {
	-- 			tools = {
	-- 				test_executor = "background",
	-- 			},
	-- 			server = {
	-- 				default_settings = {
	-- 					["rust-analyzer"] = {
	-- 						checkOnSave = {
	-- 							command = "clippy",
	-- 							enable = true,
	-- 						},
	-- 						diagnostics = {
	-- 							enable = true,
	-- 							experimental = {
	-- 								enable = true,
	-- 							},
	-- 							styleLints = {
	-- 								enable = true,
	-- 							},
	-- 						},
	-- 						hover = {
	-- 							actions = {
	-- 								references = {
	-- 									enable = true,
	-- 								},
	-- 							},
	-- 						},
	-- 						interpret = {
	-- 							tests = true,
	-- 						},
	-- 						cargo = {
	-- 							features = "all",
	-- 						},
	-- 						completion = {
	-- 							fullFunctionSignatures = {
	-- 								enable = true,
	-- 							},
	-- 						},
	-- 					},
	-- 				},
	-- 			},
	-- 			dap = {},
	-- 		}
	-- 	end,
	-- },

	-- {
	-- 	"Xiione/vim-apm",
	-- 	config = function()
	-- 		local apm = require("vim-apm")
	-- 		apm:setup({})
	-- 		MAP("n", "<leader>apm", function() apm:toggle_monitor() end)
	-- 	end,
	-- },
}
