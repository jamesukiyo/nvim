return {

    {
        "echasnovski/mini.indentscope",
        version =  "*",

        config = function()
            require("mini.indentscope").setup({
                draw = {
                    delay = 0,
                    animation = require("mini.indentscope").gen_animation.none(),
                },
                options = {
                    try_as_border = true,
                },
            })
        end,
    },

    {
        "echasnovski/mini.surround",
        config = function()
            require("mini.surround").setup()
        end,
    },

    {
        "echasnovski/mini.cursorword",
        config = function()
            require("mini.cursorword").setup({
                delay = 0
            })
        end,
    },

    {
        'echasnovski/mini.files', 
        version = '*',
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function()
            local map = vim.keymap.set
            require("mini.files").setup({
                windows = {
                    max_number = 1,
                    preview = false,
                }
            })
            map('n', '<C-s>', function() vim.cmd("lua MiniFiles.open()") end,
                { desc = "Open file explorer" })
        end
    },
    {
        "echasnovski/mini.ai",
        config = function()
            require("mini.ai").setup()
        end,
    },

}
