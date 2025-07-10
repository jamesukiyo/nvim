return {
	"kvrohit/rasmus.nvim",
	priority = 1000,
	config = function()
		ColorMyPencils("rasmus")
		DisableItalic()
		DisableBold()

		-- Custom highlight overrides
		local highlights = {
			SpellBad = { undercurl = false, underline = true },
			SpellCap = { undercurl = false, underline = true },
			SpellLocal = { undercurl = false, underline = true },
			SpellRare = { undercurl = false, underline = true },
			DiagnosticUnderlineError = { undercurl = false, underline = true },
			DiagnosticUnderlineWarn = { undercurl = false, underline = true },
			DiagnosticUnderlineInfo = { undercurl = false, underline = true },
			DiagnosticUnderlineHint = { undercurl = false, underline = true },
			DiffAdd = { reverse = false },
			DiffChange = { reverse = false },
			DiffDelete = { reverse = false },
		}

		for group, opts in pairs(highlights) do
			SET_HL(0, group, opts)
		end
	end,
}
