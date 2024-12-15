return {

    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        local map = vim.keymap.set
        local builtin = require('telescope.builtin')
        require("telescope").setup({})

        map('n', '<leader>ff', builtin.find_files, {}, { desc = "Find files" })
        map('n', '<leader>fg', builtin.live_grep, {}, { desc = "Live grep" })
    end

}
