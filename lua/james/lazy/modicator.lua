return {

    "mawkler/modicator.nvim",
    enabled = false,

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
