require("trouble").setup({
	auto_close = true,
	modes = {
		diagnostics = {
			win = {
				size = 0.3,
			},
		},
	},
})

MAP(
	"n",
	"<leader>tr",
	"<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>",
	{ desc = "Trouble diagonostics current file" }
)
MAP(
	"n",
	"<leader>te",
	"<cmd>Trouble diagnostics toggle focus=true<cr>",
	{ desc = "Trouble diagonostics all files" }
)
MAP(
	"n",
	"<leader>tq",
	"<cmd>Trouble qflist toggle<cr>",
	{ desc = "Trouble quickfix list" }
)
