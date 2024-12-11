return {

    "mawkler/modicator.nvim",
    dependencies = {
        "rose-pine/neovim",
        "folke/tokyonight.nvim",
        "navarasu/onedark.nvim",
    },

    config = function()
        require("modicator").setup({})
    end,

}
