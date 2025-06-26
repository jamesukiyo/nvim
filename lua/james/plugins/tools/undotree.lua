return {
	"mbbill/undotree",
	event = "BufRead",
	config = function()
		MAP("n", "<leader>u", CMD.UndotreeToggle)
	end,
}
