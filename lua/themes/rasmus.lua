return {
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
}
