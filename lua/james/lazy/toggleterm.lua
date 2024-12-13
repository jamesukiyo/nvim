return {

    'akinsho/toggleterm.nvim', 
    version = "*", 

    config = function()
        require("toggleterm").setup({
            open_mapping = [[<leader>t]],
            insert_mappings = false,
            direction = "vertical",
            size = 70
            -- float_opts = {
            --    border = "curved",
            -- },
        })
    end

}
