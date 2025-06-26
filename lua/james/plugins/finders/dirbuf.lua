return {
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
}
