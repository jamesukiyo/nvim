return {

    "matbme/JABS.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        local map = vim.keymap.set
        require("jabs").setup({
            position = "center",
            border = "single",
            sort_mru  = true,
            symbols = {
                current = "C", -- default 
                split = "S", -- default 
                alternate = "A", -- default 
                hidden = "H", -- default ﬘
                locked = "L", -- default 
                ro = "R", -- default 
                edited = "E", -- default 
                terminal = "T", -- default 
                default_file = "D", -- Filetype icon if not present in nvim-web-devicons. Default 
                terminal_symbol = ">_" -- Filetype icon for a terminal split. Default 
            },
        })
        map("n", "<leader>o", ":JABSOpen<CR>")
    end,

}
