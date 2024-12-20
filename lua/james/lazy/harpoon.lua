return {

    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    config = function()
        local harpoon = require("harpoon")
        local map = vim.keymap.set
        harpoon:setup({
            settings = {
                save_on_toggle = true,
                save_on_ui_close = true,
            },
        })
        -- Harpoon Keymaps
        map("n", "<leader>a", function() harpoon:list():add() end,
            { desc = "Add to harpoon" })
        map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end,
            { desc = "Harpoon menu" })

        -- Navigation
        -- map("n", "<Leader>h", function() harpoon:list():select(1) end)
        -- map("n", "<Leader>j", function() harpoon:list():select(2) end)
        -- map("n", "<Leader>k", function() harpoon:list():select(3) end)
        -- map("n", "<Leader>l", function() harpoon:list():select(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        map("n", "<Leader>j", function() harpoon:list():prev() end,
            { desc = "Previous harpoon" })
        map("n", "<Leader>k", function() harpoon:list():next() end,
            { desc = "Next harpoon" })
    end

}
