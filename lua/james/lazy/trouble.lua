return {
    "folke/trouble.nvim",
    config = function()
        require("trouble").setup({
            modes = {
                diagnostics = { -- Configure symbols mode
                    win = {
                        size = 0.3, -- 30% of the window})
                        -- },
                        --preview = {
                        --    type = "float",
                        --    relative = "win",
                        --    title = "Preview",
                        --    border = "rounded",
                        --size = { width = 0.25, height = 0.4 },
                        --    zindex = 200,
                        --},
                    },
                },
            },
        })
        local map = vim.keymap.set
        map("n", "<leader>tr", "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>", { desc = "Trouble diagonostics current file" })
        map("n", "<leader>te", "<cmd>Trouble diagnostics toggle focus=true<cr>", { desc = "Trouble diagonostics all files" })
        map("n", "<leader>tq", "<cmd>Trouble qflist toggle<cr>", { desc = "Trouble quickfix list" })

    end
}
