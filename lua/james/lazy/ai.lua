
return {

    {
        "supermaven-inc/supermaven-nvim",
        lazy = true,
        event = "InsertEnter",
        config = function()
            require("supermaven-nvim").setup({})
        end
    },
    {
        "Exafunction/codeium.nvim",
        lazy = true,
        event = "InsertEnter",
        enabled = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "hrsh7th/nvim-cmp",
        },
        config = function()
            require("codeium").setup({})
        end
    }

}
