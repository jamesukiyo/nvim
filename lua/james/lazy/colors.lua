function ColorMyPencils(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    -- transparent background
    vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, "NormalNC", {bg = "none"})

    vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#BFBFBF', bold=false })
    vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
    vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#BFBFBF', bold=false })
end


Color_Scheme = "moonfly"

return {
    {
        'dasupradyumna/midnight.nvim',
        enabled = false,
        lazy = false,
        priority = 1000
    },
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
            ColorMyPencils(Color_Scheme)
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
        enabled = false,
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
    {
        'maxmx03/fluoromachine.nvim',
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            local fm = require 'fluoromachine'

            fm.setup {
                glow = true,
                theme = 'fluoromachine',
                transparent = true,
            }

            vim.cmd.colorscheme 'fluoromachine'
        end
    },
    {
        "Yazeed1s/oh-lucy.nvim",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.oh_lucy_evening_transparent_background = true
            vim.cmd.colorscheme 'oh-lucy-evening'
        end
    },
    {
        {
            'AmberLehmann/candyland.nvim',
            priority = 1000,
            enabled = false,
            config = function()
                ColorMyPencils("candyland")
            end
        }
    },
    {
        "miikanissi/modus-themes.nvim",
        priority = 1000,
        enabled = false,
        config = function()
            require("modus-themes").setup({
                style = "modus_vivendi",
                transparent = true,
                dim_inactive = true,
                styles = {
                    comments = { italic = false },
                    keywords = { italic = false },
                },
            })
            ColorMyPencils("modus")
        end
    },
    {
        "ishan9299/modus-theme-vim",
        enabled = false,
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.modus_termtrans_enable = 1
            ColorMyPencils("modus-vivendi")
        end
    },
    {
        "zenbones-theme/zenbones.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            vim.g.bones_compat = 1
            vim.g.zenbones_transparent_background = 0
            vim.g.zenbones_solid_line_nr = 1
            vim.g.zenbones_italic_comments = 0
            vim.g.zenbones_lighten_line_nr = 10000000000
            ColorMyPencils(Color_Scheme)
        end
    },
    {
        "nyoom-engineering/oxocarbon.nvim",
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            require("oxocarbon").setup({})
            ColorMyPencils("oxocarbon")
        end
    },
    {
        'aliqyan-21/darkvoid.nvim',
        lazy = false,
        enabled = false,
        priority = 1000,
        config = function()
            require("darkvoid").setup({
                transparent = true,
                show_end_of_buffer = true,
            })
            ColorMyPencils("darkvoid")
        end
    },
    {
        "bluz71/vim-moonfly-colors",
        name = "moonfly",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.moonflyItalics = false
            vim.g.moonflyUndercurls = false
            ColorMyPencils("moonfly")
        end
    },
}
