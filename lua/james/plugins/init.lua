-- Helper functions for plugin management
function COLORSCHEME_REQUIRE(colorscheme_name, config_file)
	local ok = pcall(vim.cmd.colorscheme, colorscheme_name)
	if ok and config_file then pcall(require, config_file) end
	return ok
end

-- Helper function for requiring plugins
function REQUIRE(module_name, config_file)
	local ok, _ = pcall(require, module_name)
	if ok then
		if config_file then
			local config_ok, err = pcall(require, config_file)
			if not config_ok then
				vim.notify(
					"Failed to load config: " .. config_file .. "\nError: " .. err,
					vim.log.levels.ERROR
				)
			end
		end
		return true
	else
		vim.notify(
			"Module '"
				.. module_name
				.. "' not found, skipping config: "
				.. (config_file or "none"),
			vim.log.levels.WARN
		)
		return false
	end
end

-- Load legacy plugin configs first
require("james.plugins.snippets.minisnip")
require("james.plugins.snippets.quicksnip")
require("james.plugins.docs.vimwiki")
require("james.plugins.tools.undotree")

-- Then load all plugins
vim.pack.add({
	-- Core Dependencies
	{ src = "https://github.com/nvim-lua/plenary.nvim" }, -- Required by many plugins
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" }, -- Required by UI components
	{ src = "https://github.com/muniftanjim/nui.nvim" }, -- Required by UI components
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" }, -- Required by treesitter extensions
	{ src = "https://github.com/sindrets/diffview.nvim" }, -- Required by neogit
	{ src = "https://github.com/m00qek/baleia.nvim" }, -- Required by compile-mode
	{ src = "https://github.com/nvzone/volt" } -- Required by typr
	-- UI
	{ src = "https://github.com/j-hui/fidget.nvim" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/kvrohit/rasmus.nvim" },
	-- Buffers
	{ src = "https://github.com/theprimeagen/harpoon", version = "harpoon2" },  -- Comment to disable
	{ src = "https://github.com/matbme/JABS.nvim" },  -- Comment to disable
	{ src = "https://github.com/echasnovski/mini.bufremove" },
	{ src = "https://github.com/leath-dub/snipe.nvim" },

	-- Diagnostics
	{ src = "https://github.com/folke/trouble.nvim" },
	{ src = "https://github.com/rachartier/tiny-inline-diagnostic.nvim" },

	-- Documentation
	{ src = "https://github.com/luckasRanarison/nvim-devdocs" },
	{ src = "https://github.com/vimwiki/vimwiki" },

	-- Editing
	{ src = "https://github.com/windwp/nvim-autopairs" },
	{ src = "https://github.com/echasnovski/mini.ai" },
	{ src = "https://github.com/echasnovski/mini.surround" },
	{ src = "https://github.com/supermaven-inc/supermaven-nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects" },
	{ src = "https://github.com/windwp/nvim-ts-autotag" },
	{ src = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring" },

	-- Finders
	{ src = "https://github.com/nvim-telescope/telescope.nvim" },
	{ src = "https://github.com/elihunter173/dirbuf.nvim" },

	-- Games
	{ src = "https://github.com/vuciv/golf" },
	{ src = "https://github.com/nvzone/typr" },
	{ src = "https://github.com/ThePrimeagen/vim-be-good" },

	-- Git
	{ src = "https://github.com/echasnovski/mini.diff" },
	{ src = "https://github.com/NeogitOrg/neogit" },
	{ src = "https://github.com/topaxi/pipeline.nvim" },

	-- LSP
	{ src = "https://github.com/stevearc/conform.nvim" },
	{ src = "https://github.com/saecki/crates.nvim" },
	{ src = "https://github.com/vxpm/ferris.nvim" },
	{ src = "https://github.com/saghen/blink.cmp", version = vim.version.range("1.0") },
	{ src = "https://github.com/vuki656/package-info.nvim" },
	{ src = "https://github.com/b0o/schemastore.nvim" },

	-- Monorepos
	{ src = "https://github.com/Equilibris/nx.nvim" },
	{ src = "https://github.com/natecraddock/workspaces.nvim" },

	-- Quality of Life
	{ src = "https://github.com/uga-rosa/ccc.nvim" },
	{ src = "https://github.com/shortcuts/no-neck-pain.nvim" },
	{ src = "https://github.com/NStefan002/screenkey.nvim" },
	{ src = "https://github.com/Aasim-A/scrollEOF.nvim" },
	{ src = "https://github.com/folke/twilight.nvim" },
	{ src = "https://github.com/folke/zen-mode.nvim" },

	-- Runners
	{ src = "https://github.com/ej-shafran/compile-mode.nvim" },

	-- Snippets
	{ src = "https://github.com/Jorenar/miniSnip" },
	{ src = "https://github.com/jamesukiyo/quicksnip.vim" },

	-- Tools
	{ src = "https://github.com/epwalsh/pomo.nvim" },
	{ src = "https://github.com/jamesukiyo/search-this.nvim" },
	{ src = "https://github.com/folke/todo-comments.nvim" },
	{ src = "https://github.com/mbbill/undotree" },

	-- Treesitter Extensions
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter-context" },
})

-- Configure plugins after loading
require("james.plugins.ui.defaults") -- Load UI defaults first
require("james.plugins.ui.globals")

-- UI
REQUIRE("fidget", "james.plugins.ui.fidget")
REQUIRE("lualine", "james.plugins.ui.lualine")
require("james.plugins.ui.themes.rasmus")

-- Buffers
REQUIRE("harpoon", "james.plugins.buffers.harpoon")
REQUIRE("jabs", "james.plugins.buffers.jabs")
REQUIRE("mini.bufremove", "james.plugins.buffers.mini_bufremove")
REQUIRE("snipe", "james.plugins.buffers.snipe")

-- Diagnostics
REQUIRE("trouble", "james.plugins.diagnostics.trouble")
REQUIRE("tiny-inline-diagnostic", "james.plugins.diagnostics.tiny-inline-diagnostic")

-- Editing
REQUIRE("nvim-autopairs", "james.plugins.editing.autopairs")
REQUIRE("mini.ai", "james.plugins.editing.mini_ai")
REQUIRE("mini.surround", "james.plugins.editing.mini_surround")
REQUIRE("supermaven-nvim", "james.plugins.editing.supermaven")
REQUIRE("nvim-ts-autotag", "james.plugins.editing.ts-autotag")
REQUIRE("ts_context_commentstring", "james.plugins.editing.ts-context-commentstring")

-- Finders
REQUIRE("telescope", "james.plugins.finders.telescope")
REQUIRE("dirbuf", "james.plugins.finders.dirbuf")

-- Git
REQUIRE("mini.diff", "james.plugins.git.mini_diff")
REQUIRE("neogit", "james.plugins.git.neogit")
REQUIRE("pipeline", "james.plugins.git.pipeline")

-- LSP
REQUIRE("conform", "james.plugins.lsp.conform")
REQUIRE("crates", "james.plugins.lsp.crates")
REQUIRE("ferris", "james.plugins.lsp.ferris")
REQUIRE("blink.cmp", "james.plugins.lsp.blink_cmp")
REQUIRE("package-info", "james.plugins.lsp.package-info")
require("james.plugins.lsp.lsp_configs") -- Load LSP configs first
require("james.plugins.lsp.lsp") -- Then set up LSP with those configs

-- Monorepos
REQUIRE("nx", "james.plugins.monorepos.nx")
REQUIRE("workspaces", "james.plugins.monorepos.workspaces")

-- Quality of Life
REQUIRE("ccc", "james.plugins.qol.ccc")
REQUIRE("no-neck-pain", "james.plugins.qol.no-neck-pain")
REQUIRE("screenkey", "james.plugins.qol.screenkey")
REQUIRE("scrollEOF", "james.plugins.qol.scrolleof")
REQUIRE("twilight", "james.plugins.qol.twilight")
REQUIRE("zen-mode", "james.plugins.qol.zen-mode")

-- Runners
REQUIRE("compile-mode", "james.plugins.runners.compile-mode")

-- Tools
REQUIRE("pomo", "james.plugins.tools.pomo")
REQUIRE("search-this", "james.plugins.tools.search-this")
REQUIRE("todo-comments", "james.plugins.tools.todo-comments")
require("james.plugins.tools.undotree") -- This is just keymaps

-- Treesitter
REQUIRE("nvim-treesitter.configs", "james.plugins.treesitter.treesitter")
REQUIRE("treesitter-context", "james.plugins.treesitter.treesitter-context")
