return {

    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = true,

    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>t]],
            direction = "vertical",
            size = 70
            -- float_opts = {
            --    border = "curved",
            -- },
        })
    end

}
