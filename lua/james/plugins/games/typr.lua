require("typr").setup({
	config = {
		on_attach = function()
			vim.bo.wrap = false
			vim.bo.completion = false
		end,
	},
})
