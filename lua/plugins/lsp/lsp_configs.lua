local blink_cmp = require("blink.cmp")
local capabilities = vim.tbl_deep_extend(
	"force",
	{},
	vim.lsp.protocol.make_client_capabilities(),
	blink_cmp.get_lsp_capabilities()
)

LSP_rust_analyzer = {
	cmd = { "rust-analyzer" },
	capabilities = capabilities,
	filetypes = { "rust" },
	root_markers = { "Cargo.toml", "Cargo.lock" },
	settings = {
		["rust-analyzer"] = {
			assist = {
				preferSelf = true,
			},
			lens = {
				references = {
					adt = {
						enable = true,
					},
					enumVariant = {
						enable = true,
					},
					method = {
						enable = true,
					},
					trait = {
						enable = true,
						all = true,
					},
				},
			},
			semanticHighlighting = {
				operator = {
					specialization = {
						enable = true,
					},
				},
				punctuation = {
					enable = true,
					separate = {
						macro = {
							enable = true,
						},
					},
					specialization = {
						enable = true,
					},
				},
			},
			inlayHints = {
				bindingModeHints = {
					enable = true,
				},
				closureCaptureHints = {
					enable = true,
				},
				closureReturnTypeHints = {
					enable = true,
				},
				discriminantHints = {
					enable = true,
				},
				expressionAdjustmentHints = {
					enable = true,
				},
				genericParameterHints = {
					lifetime = {
						enable = true,
					},
					type = {
						enable = true,
					},
				},
				implicitDrops = {
					enable = true,
				},
				implicitSizedBoundHints = {
					enable = true,
				},
				lifetimeElisionHints = {
					useParameterNames = true,
					enable = true,
				},
				rangeExclusiveHints = {
					enable = true,
				},
			},
			-- checkOnSave and diagnostics must be disabled for bacon-ls
			checkOnSave = {
				command = "clippy",
				enable = true,
			},
			diagnostics = {
				enable = true,
				experimental = {
					enable = true,
				},
				styleLints = {
					enable = true,
				},
			},
			hover = {
				actions = {
					references = {
						enable = true,
					},
				},
				show = {
					enumVariants = 10,
					fields = 10,
					traitAssocItems = 10,
				},
			},
			interpret = {
				tests = true,
			},
			cargo = {
				features = "all",
			},
			completion = {
				hideDeprecated = true,
				fullFunctionSignatures = {
					enable = true,
				},
			},
		},
	},
}

LSP_bacon_ls = {
	cmd = { "bacon-ls" },
	capabilities = capabilities,
	filetypes = { "rust" },
	root_markers = { "Cargo.toml", "Cargo.lock", ".bacon-locations" },
	settings = {
		init_options = {
			locationsFile = ".bacon-locations",
			updateOnSave = true,
			updateOnSaveWaitMillis = 100,
			runBaconInBackground = true,
			synchronizeAllOpenFilesWaitMillis = 1000,
		},
	},
}

LSP_ts_ls = {
	cmd = { "bunx", "--bun", "typescript-language-server", "--stdio" },
	capabilities = capabilities,
	root_markers = { "package.json", "bun.lock", "package-lock.json" },
	init_options = {
		plugins = {
			{
				name = "@vue/typescript-plugin",
				location = vim.fn.exepath("vue-language-server"),
				languages = { "vue" },
			},
		},
	},
	filetypes = {
		"typescript",
		"javascript",
		"javascriptreact",
		"typescriptreact",
		"vue",
	},
}

LSP_gopls = {
	capabilities = capabilities,
	cmd = { "gopls" },
	root_markers = { "go.mod", "go.sum" },
	filetypes = { "go" },
	-- init_options = {
	-- 	usePlaceholders = true,
	-- },
	settings = {
		experimentalPostfixCompletions = true,
		gofumpt = true,
		staticcheck = true,
		completeUnimported = true,
		usePlaceholders = true,
		semanticTokens = true,
				-- stylua: ignore start
				analyses = { -- all good analyses are enabled
					shadow = true, QF1005 = true, QF1006 = true, QF1007 = true, QF1011 = true, S1002 = true, S1005 = true, S1006 = true, S1008 = true, S1009 = true, S1011 = true, S1016 = true, S1021 = true, S1029 = true, SA1000 = true, SA1002 = true, SA1003 = true, SA1007 = true, SA1010 = true, SA1011 = true, SA1014 = true, SA1015 = true, SA1017 = true, SA1018 = true, SA1020 = true, SA1021 = true, SA1023 = true, SA1024 = true, SA1025 = true, SA1026 = true, SA1027 = true, SA1028 = true, SA1030 = true, SA1031 = true, SA1032 = true, SA2002 = true, SA2003 = true, SA4005 = true, SA4006 = true, SA4008 = true, SA4009 = true, SA4010 = true, SA4012 = true, SA4015 = true, SA4017 = true, SA4018 = true, SA4023 = true, SA4031 = true, SA5000 = true, SA5002 = true, SA5005 = true, SA5007 = true, SA5010 = true, SA5011 = true, SA5012 = true, SA6000 = true, SA6001 = true, SA6002 = true, SA6003 = true, SA9001 = true, SA9003 = true, SA9005 = true, SA9007 = true, SA9008 = true,
				},
		-- stylua: ignore end
		codelenses = {
			run_govulncheck = true,
		},
		vulncheck = "Imports",
	},
}

LSP_lua_ls = {
	capabilities = capabilities,
	-- scoop install lua-language-server
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				checkThirdParty = true,
				library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
}

LSP_json_ls = {
	capabilities = capabilities,
	filetypes = { "json", "jsonc" },
	settings = {
		json = {
			schemas = require("schemastore").json.schemas(),
			validate = { enable = true },
		},
	},
}

LSP_yamlls = {
	capabilities = capabilities,
	filetypes = { "yaml" },
	settings = {
		yaml = {
			schemaStore = {
				-- You must disable built-in schemaStore support if you want to use
				-- this plugin and its advanced options like `ignore`.
				enable = false,
				-- Avoid TypeError: Cannot read properties of undefined (reading 'length')
				url = "",
			},
			schemas = require("schemastore").yaml.schemas(),
		},
	},
}

LSP_nushell = {
	cmd = { "nu", "--lsp" },
	capabilities = capabilities,
	filetypes = { "nu" },
	root_markers = { ".git" },
	settings = {},
}

LSP_svelte_language_server = {
	cmd = { "svelteserver", "--stdio" },
	capabilities = capabilities,
	filetypes = { "svelte" },
	root_markers = { "package.json", "bun.lock", ".git" },
	settings = {},
}

LSP_astro_ls = {
	cmd = { "astro-ls", "--stdio" },
	capabilities = capabilities,
	filetypes = { "astro" },
	root_markers = { "package.json", "bun.lock", ".git", "tsconfig.json" },
	settings = {},
	init_options = {
		typescript = {
			tsdk = "node_modules/typescript/lib",
		},
	},
}

LSP_tailwindcss = {
	cmd = { "tailwindcss-language-server", "--stdio" },
	capabilities = capabilities,
	filetypes = { "astro", "svelte", "tsx", "jsx", "html", "vue" },
	root_markers = { "package.json", "bun.lock", ".git" },
	settings = {},
}

return {}
