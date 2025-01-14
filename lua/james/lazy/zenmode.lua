return {

    { 
        "folke/zen-mode.nvim",
        cmd = "ZenMode",
        config = function()
            require("zen-mode").setup({
                window = {
                    backdrop = 1,
                    width = 0.8,
                    height = 1,
                },
                plugins = {
                    options = {
                        enabled = true,
                        showcmd = true,
                        ruler = false,
                        laststatus = 0,
                    },
                    twilight = { enabled = false },
                    gitsigns = { enabled = false },
                    wezterm = {
                        enabled = true,
                        font = "+4",
                    },
                }
            })
        end
    },
    {
        "folke/twilight.nvim",
        cmd = "Twilight",
        config = function()
            require("twilight").setup({
                dimming = {
                    alpha = 0.9,
                },
            })
        end
    },

}
