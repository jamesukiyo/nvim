return {

    'akinsho/toggleterm.nvim', 
    enabled = false,
    version = "*", 

    config = function()
        local map = vim.keymap.set
        --        local highlights = require ("rose-pine.plugins.toggleterm")
        require("toggleterm").setup({
            insert_mappings = false,
            persist_size = false,
            persist_mode = false,
            direction = "float",
            -- size = 70,
            float_opts = {
                border = "curved",
                width = 100,
                height = 60,
            },
            --  highlights = highlights,
            start_in_insert = true,
            close_on_exit = true,
        })
       --- map("n", "<leader>tt", vim.cmd.ToggleTerm)
        map("t", "jk", [[<C-\><C-n>]])
        map("t", "kj", [[<C-\><C-n>]])
    end

}
