return {

    "matbme/JABS.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local map = vim.keymap.set
        require("jabs").setup({
            position = "center",
            border= "single",
            sort_mru  = true,
        })
        map("n", "<leader>o", ":JABSOpen<CR>")
    end,

}
