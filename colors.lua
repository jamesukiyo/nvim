local g = "https://github.com/"
vim.pack.add({
	{ src = g .. "kvrohit/rasmus.nvim" },
	{ src = g .. "haystackandroid/rusticated" },
})

-- rasmus
function FixRasmus()
	local highlights = {
		DiffAdd = { reverse = false },
		NeogitDiffAdd = { reverse = false },
		DiffChange = { reverse = false },
		NeogitDiffChange = { reverse = false },
		DiffDelete = { reverse = false },
		NeogitDiffDelete = { reverse = false },
	}
	for group, opts in pairs(highlights) do
		SET_HL(0, group, opts)
	end

	DisableUndercurl()
end

-- rusticated
function FixRusticated()
	SET_HL(0, "DiffAdd", { fg = "#1e1e1e", bg = "#98c379" })
	SET_HL(0, "DiffAdded", { fg = "#1e1e1e", bg = "#98c379" })
	SET_HL(0, "DiffTextAdd", { fg = "#1e1e1e", bg = "#98c379" })
	SET_HL(0, "DiffText", { fg = "#1e1e1e", bg = "#98c379" })
end

-- helper functions
function ColorMyPencils(color, theme, transparent)
	vim.o.background = theme or "light"
	CMD.colorscheme(color or "default")
	require("fidget").notify(
		"background: " .. vim.o.background .. "\n theme: " .. theme .. "\n colorscheme: " .. color
	)

	-- general tweaks
	if transparent then
		SET_HL(0, "Normal", { bg = "none" })
		SET_HL(0, "NormalFloat", { bg = "none" })
		SET_HL(0, "NormalNC", { bg = "none" })
	end

	if theme == "dark" then
		SET_HL(0, "LineNrAbove", { fg = "#BFBFBF", bold = false })
		SET_HL(0, "LineNr", { fg = "white", bold = true })
		SET_HL(0, "LineNrBelow", { fg = "#BFBFBF", bold = false })
	end

	SET_HL(0, "LspInlayHint", { fg = "#808080" })

	-- fixes for colorschemes
	if color == "rusticated" then FixRusticated() end
	if color == "rasmus" then FixRasmus() end
end

function DisableItalic()
	local hl_groups = vim.api.nvim_get_hl(0, {})

	for key, hl_group in pairs(hl_groups) do
		if hl_group.italic then
			SET_HL(0, key, vim.tbl_extend("force", hl_group, { italic = false }))
		end
	end
end

function DisableBold()
	local hl_groups = vim.api.nvim_get_hl(0, {})

	for key, hl_group in pairs(hl_groups) do
		if hl_group.bold then
			SET_HL(0, key, vim.tbl_extend("force", hl_group, { bold = false }))
		end
	end
end

function DisableUndercurl()
	local highlights = {
		DiagnosticUnderlineError = { undercurl = false, underline = true },
		DiagnosticUnderlineWarn = { undercurl = false, underline = true },
		DiagnosticUnderlineInfo = { undercurl = false, underline = true },
		DiagnosticUnderlineHint = { undercurl = false, underline = true },
	}

	for group, opts in pairs(highlights) do
		SET_HL(0, group, opts)
	end
end
