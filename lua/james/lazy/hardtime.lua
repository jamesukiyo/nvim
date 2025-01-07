return {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },

    config = function()
        require("hardtime").setup({
            max_count = 5,
            disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason", "oil", "JABSwindow", "trouble", "Trouble", "undotree", "minifiles", "dirbuf" },
        })
    end
}
