return {

    'akinsho/toggleterm.nvim', 
    version = "*", 

    config = function()
        local map = vim.keymap.set
        --        local highlights = require ("rose-pine.plugins.toggleterm")
        require("toggleterm").setup({
            insert_mappings = false,
            direction = "vertical",
            size = 70,
            -- float_opts = {
            --    border = "curved",
            -- },
            --           highlights = highlights,
            start_in_insert = true,
            close_on_exit = true,
        })
        map("n", "<leader>tt", vim.cmd.ToggleTerm)
        map("t", "jk", [[<C-\><C-n>]])
        map("t", "kj", [[<C-\><C-n>]])
    end

}
