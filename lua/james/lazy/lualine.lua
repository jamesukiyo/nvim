return {

    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = { theme = Color_Scheme },
            extensions = { "toggleterm", "quickfix", "fugitive", "lazy", "trouble" },
            sections = {
                lualine_c = { { "filename", show_filename_only = false, path = 1 } },
                lualine_x = {'fileformat', 'filetype'},
            },
            inactive_sections = {
                lualine_c = { { "filename", show_filename_only = false, path = 1 } },
                lualine_x = {'fileformat', 'filetype'},
            },
        })
    end

}
