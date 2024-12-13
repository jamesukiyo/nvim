return {
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require("onedark").setup({
                transparent = true,
                lualine = {
                    transparent = true,
                },
                ending_tildes = true,
                term_colors = true,
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
                styles = { transparent = true },
            })
            -- vim.cmd("colorscheme rose-pine")
            vim.cmd("colorscheme rose-pine")
            -- vim.cmd("colorscheme rose-pine-dawn")
        end
    },
    {
        "folke/tokyonight.nvim",
        name = "tokyonight",
        priority = 1000,
        config = function()
            require("tokyonight").setup({
                dim_inactive = true,
                transparent = true,
                terminal_colors = true,
                styles = {
                    sidebars = "dark",
                    floats = "dark",
                },
            })
            -- vim.cmd("colorscheme tokyonight")
            -- vim.cmd("colorscheme tokyonight-night")
            -- vim.cmd("colorscheme tokyonight-storm")
        end
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            require("gruvbox").setup({
                terminal_colors = true,
                dim_inactive = true,
                transparent = true,
            })
            -- vim.cmd("colorscheme gruvbox")
        end
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                transparent = true,
                term_colors = true,
                dim_inactive = {
                    enabled = true,
                    shade = "dark",
                    percentage = 0.2,
                },
                show_end_of_buffer = true,
            })
            -- vim.cmd("colorscheme catppuccin-latte")
            -- vim.cmd("colorscheme catppuccin-frappe")
            -- vim.cmd("colorscheme catppuccin-macchiato")
            -- vim.cmd("colorscheme catppuccin-mocha")
        end
    }


}
