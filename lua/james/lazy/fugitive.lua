return {
    "tpope/vim-fugitive",
    config = function()
        vim.keymap.set("n", "<leader>gs", "<cmd>Git<cr>")
        vim.keymap.set("n", "<leader>gc", ":Git ")
    end,
}
