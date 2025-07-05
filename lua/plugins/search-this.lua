return {
	"jamesukiyo/search-this.nvim",
	name = "search-this",
	cmd = { "SearchThis", "SearchThisNormal" },
	keys = "<leader>st",
	config = function()
		require("search-this").setup({
			default_engine = "ddg",
		})
	end,
}
