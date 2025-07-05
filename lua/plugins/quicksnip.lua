CMD([[
	let g:miniSnip_dirs = ['~/.vim/snippets']
	let g:miniSnip_trigger = '<C-c>'
	let g:miniSnip_complkey = ''
	let g:miniSnip_extends = {
	\ "html": ["svelte"],
	\ "svelte": ["typescript", "html"],
	\ "typescript": ["javascript"],
	\ "javascript": ["typescript"],
	\ }
	map <leader>sc :SnipCurrent<CR>
	map <leader>sp :SnipPick<CR>
]])

return {
	"jamesukiyo/quicksnip.vim",
	cmd = { "SnipCurrent", "SnipPick" },
	keys = { "<leader>sp", "<leader>sc" },
}
