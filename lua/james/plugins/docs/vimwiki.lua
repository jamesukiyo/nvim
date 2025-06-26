CMD([[
		let g:vimwiki_option_diary_path = './diary/'
		let g:vimwiki_global_ext = 0
		let g:vimwiki_option_nested_syntaxes = {'svelte': 'svelte', 'typescript': 'ts'}
		let g:vimwiki_list = [{'path': '~/vimwiki/james/', 'name': 'james', 'syntax': 'markdown', 'ext': 'md'},
		\ {'path': '~/vimwiki/healgorithms/', 'name': 'healgorithms', 'syntax': 'markdown', 'ext': 'md', 'auto_toc': 1}]
		]])

return {
	"vimwiki/vimwiki",
	keys = { "<leader>ww", "<leader>wi" },
}
