return {

    "elihunter173/dirbuf.nvim",
    config = function()
        require("dirbuf").setup({
            sort_order = "directories_first"
        })
        vim.keymap.set("n", "<C-s>", "<cmd>Dirbuf<CR>")
        vim.keymap.set("n", "-", "")
    end,

}
