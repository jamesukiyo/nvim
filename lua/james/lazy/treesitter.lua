return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = { 
                    "javascript", "typescript", "svelte", "markdown", "css", "html", 
                    "lua", "vim", "json", "yaml", "vimdoc"
                },
                highlight = { enable = true },
                auto_install = true,
                indent = { enable = true },
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter-context",
        vim.api.nvim_set_hl(0, 'TreesitterContextLineNumberBottom', { 
            fg = '#FFFFFF' 
        })
    },
    {
    "JoosepAlviste/nvim-ts-context-commentstring",
    },
}
