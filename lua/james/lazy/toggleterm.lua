return {

    'akinsho/toggleterm.nvim', 
    version = "*", 

    config = function()
--        local highlights = require ("rose-pine.plugins.toggleterm")
        require("toggleterm").setup({
            open_mapping = [[<leader>tt]],
            insert_mappings = false,
            direction = "vertical",
            size = 70,
            -- float_opts = {
            --    border = "curved",
            -- },
 --           highlights = highlights,
        })
    end

}
