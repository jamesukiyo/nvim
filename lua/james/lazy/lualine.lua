return {

    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = { theme = Color_Scheme },
            extensions = { "toggleterm", "quickfix", "fugitive", "lazy", "trouble" },
        })
    end

}
