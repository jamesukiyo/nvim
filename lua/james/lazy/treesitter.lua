return {

    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = "VeryLazy",
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
    end
}
