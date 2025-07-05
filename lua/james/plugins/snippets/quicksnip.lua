-- Quicksnip configuration
vim.cmd([[
let g:quicksnip_dirs = ['~/.vim/snippets']
let g:quicksnip_trigger = '<C-c>'
let g:quicksnip_complkey = ''
let g:quicksnip_extends = {
\ "html": ["svelte"],
\ "svelte": ["typescript", "html"],
\ "typescript": ["javascript"],
\ "javascript": ["typescript"],
\ }
]])
MAP("n", "<leader>sc", ":SnipCurrent<CR>", { silent = true })
MAP("n", "<leader>sp", ":SnipPick<CR>", { silent = true })
