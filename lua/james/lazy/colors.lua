
function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- transparent background
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})
end


Color_Scheme = "catppuccin"

return {
    {
        "navarasu/onedark.nvim",
        enabled = false,
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
        enabled = false,
        priority = 1000,
        name = "rose-pine",
        config = function()
            require('rose-pine').setup({
                disable_background = true,
                dim_inactive_windows = true,
                styles = { italic = false, transparency = true },
            })

            -- vim.cmd("colorscheme rose-pine-moon")
            -- vim.cmd("colorscheme rose-pine-dawn")
            -- vim.cmd("colorscheme rose-pine")
        end
    },
    {
        "folke/tokyonight.nvim",
        enabled = false,
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
        enabled = false,
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
                flavour = "mocha", -- latte, frappe, macchiato, mocha
                background = { dark = "mocha" },
                transparent = true,
                term_colors = true,
                dim_inactive = { enabled = true, shade = "dark", percentage = 0.5, },
                show_end_of_buffer = true,
                integrations = {
                    telescope = { enabled = true },
                    mini = { enabled = true, indentscope_color = "lavender" },
                    mason = true,
                    harpoon = true,
                    cmp = true,
                    treesitter = true,
                    which_key = true,
                    gitsigns = true,
                },
                custom_highlights = function(colors)
                    return {
                        LineNr = { fg = colors.overlay1 },
                    }
                end,
            })
            ColorMyPencils(Color_Scheme)

        end
    },
}
