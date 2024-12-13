return {

    'echasnovski/mini.tabline', 
    version = '*',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("mini.tabline").setup({})
    end
    
}
