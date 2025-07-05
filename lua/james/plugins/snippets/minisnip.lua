-- MiniSnip configuration
vim.g.miniSnip_dirs = { vim.fn.expand("~/.vim/snippets") }
vim.g.miniSnip_trigger = "<C-c>"
vim.g.miniSnip_complkey = ""
vim.g.miniSnip_extends = {
    html = { "svelte" },
    svelte = { "typescript", "html" },
    typescript = { "javascript" },
    javascript = { "typescript" },
}
