return {

    'akinsho/toggleterm.nvim', 
    version = "*", 
    config = true,

    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>t]],
            direction = "float",
            float_opts = {
                border = "curved",
            },
        })
    end

}