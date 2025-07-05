require("screenkey").setup({
	win_opts = {
		title = "",
		width = 25,
		height = 1,
		border = "single",  -- TODO: Fix border style once we figure out the correct setting
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