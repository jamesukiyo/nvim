return {

    'echasnovski/mini.tabline',
    enabled = false,
    version = '*',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("mini.tabline").setup({})
    end
    
}
