return {

    "ThePrimeagen/harpoon",
    branch = "harpoon2",

    config = function()
        local harpoon = require("harpoon")
        local map = vim.keymap.set
        harpoon:setup()
            -- Harpoon Keymaps
        map("n", "<leader>a", function() harpoon:list():add() end)
        map("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        -- Navigation
        -- map("n", "<Leader>h", function() harpoon:list():select(1) end)
        -- map("n", "<Leader>j", function() harpoon:list():select(2) end)
        -- map("n", "<Leader>k", function() harpoon:list():select(3) end)
        -- map("n", "<Leader>l", function() harpoon:list():select(4) end)

        -- Toggle previous & next buffers stored within Harpoon list
        map("n", "<Leader>h", function() harpoon:list():prev() end)
        map("n", "<Leader>l", function() harpoon:list():next() end)
    end
    
}