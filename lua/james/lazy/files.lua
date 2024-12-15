return {

    'echasnovski/mini.files', 
    version = '*',
    dependencies = { "nvim-tree/nvim-web-devicons" },

    config = function()
        local map = vim.keymap.set
        require("mini.files").setup({})
        map('n', '<C-s>', function() vim.cmd("lua MiniFiles.open()") end, 
            { desc = "Open file explorer" })
    end

}
