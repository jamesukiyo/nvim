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

        vim.keymap.set("n", "<leader>tr", "<cmd>Trouble diagnostics toggle focus=true filter.buf=0<cr>", { desc = "Trouble Toggle current file" })
        vim.keymap.set("n", "<leader>te", "<cmd>Trouble diagnostics toggle focus=true<cr>", { desc = "Trouble Toggle all files" })

    end
}
