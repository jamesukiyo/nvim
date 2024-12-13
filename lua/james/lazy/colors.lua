function Coloringz(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                transparent = true, 
                terminal_colors = true,
                styles = {
                    sidebars = "dark",
                    floats = "dark",
                },
            })
        end
    },
    {
        "navarasu/onedark.nvim",
        config = function()
            require("onedark").setup({
                transparent = true,
                style = "warmer",
                lualine = {
                    transparent = true,
                }
            })
            -- vim.cmd("colorscheme onedark")
        end
    },

    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
            })
            vim.cmd("colorscheme rose-pine")
            Coloringz()
        end
    },


}
