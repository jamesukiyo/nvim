function ColorMyPencils(color)
	color = color or "default"
	vim.o.background = "dark"
	CMD.colorscheme(color)

	SET_HL(0, "Normal", { bg = "none" })
	SET_HL(0, "NormalFloat", { bg = "none" })
	SET_HL(0, "NormalNC", { bg = "none" })

	SET_HL(0, "LineNrAbove", { fg = "#BFBFBF", bold = false })
	SET_HL(0, "LineNr", { fg = "white", bold = true })
	SET_HL(0, "LineNrBelow", { fg = "#BFBFBF", bold = false })
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

return {}
