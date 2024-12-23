return {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },

    config = function()
        require("hardtime").setup({
            disabled_filetypes = { "qf", "netrw", "NvimTree", "lazy", "mason", "oil", "JABSwindow", "trouble", "Trouble", "undotree", "minifiles" },
        })
    end
}
