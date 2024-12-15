return {

    "mawkler/modicator.nvim",
    dependencies = {
        "rose-pine/neovim",
        "catppuccin/nvim",
        "folke/tokyonight.nvim",
        "navarasu/onedark.nvim",
    },

    config = function()
        require("modicator").setup({
            use_cursorline_background = true,
            highlights = { defaults = { bold = true } },
            integration = {
                lualine = {
                    enabled = true,
                }
            }
        })

    end,

}
