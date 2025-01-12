return {

    {
        "echasnovski/mini.indentscope",
        config = function()
            require("mini.indentscope").setup({
                draw = {
                    delay = 0,
                    animation = require("mini.indentscope").gen_animation.none(),
                },
                options = {
                    try_as_border = true,
                },
            })
        end,
    },

    {
        "echasnovski/mini.surround",
        config = function()
            require("mini.surround").setup()
        end,
    },

    {
        "echasnovski/mini.cursorword",
        config = function()
            require("mini.cursorword").setup({
                delay = 0
            })
        end,
    },

    {
        'echasnovski/mini.files',
        enabled = true,
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function()
            local map = vim.keymap.set
            require("mini.files").setup({
                windows = {
                    max_number = 1,
                    preview = false,
                }
            })
            map('n', '<C-s>', function() vim.cmd("lua MiniFiles.open()") end,
                { desc = "Open file explorer" })
        end
    },
    {
        "echasnovski/mini.ai",
        config = function()
            require("mini.ai").setup()
        end,
    },
    {
        'echasnovski/mini.bufremove',
        config = function()
            require("mini.bufremove").setup()

            vim.keymap.set('n', '<leader>qb', function() vim.cmd("lua MiniBufremove.delete()") end, { desc = "close buffer" })
        end
    },
    {
        'echasnovski/mini.pairs',
        config = function()
            require("mini.pairs").setup()
        end,
    },
    {
        "echasnovski/mini.notify",
        config = function()
            require("mini.notify").setup({
                lsp_progress = {
                    enable = true,
                    duration_last = 1000,
                },
                window = {
                    winblend = 0,
                }
            })
        end,
    },
    {
        "echasnovski/mini.diff",
        config = function()
            require("mini.diff").setup({
                view = {
                    style = "sign",
                },
            })
        end,
    },
    {
        "echasnovski/mini-git",
        config = function()
            require("mini.git").setup({
                command = {
                    split = "vertical",
                }
            })
            vim.keymap.set("n", "<leader>gs", "<cmd>Git<cr>")
            vim.keymap.set("n", "<leader>gi", ":Git ")
        end,
    },
    {
        "echasnovski/mini.pick",
        dependencies = { "echasnovski/mini.extra" },
        config = function()
            local map = vim.keymap.set
            local pick = require("mini.pick")
            vim.ui.select = pick.ui_select
            local extra = require("mini.extra")
            local win_config = function()
                local height = math.floor(0.618 * vim.o.lines)
                local width = math.floor(0.618 * vim.o.columns)
                return {
                    anchor = 'NW', height = height, width = width,
                    row = math.floor(0.5 * (vim.o.lines - height)),
                    col = math.floor(0.5 * (vim.o.columns - width)),
                }
            end
            require("mini.pick").setup({
                options = {
                    use_cache = true,
                },
                window = {
                    config = win_config,
                },
            })

            map('n', '<leader>ff', function() pick.builtin.files() end, { desc = "Find files" })
            map('n', '<leader>fg', function() pick.builtin.grep_live() end, { desc = "Live grep" })
            map('n', '<leader>fc', function() extra.pickers.git_commits() end, { desc = "Git commits" })
        end,
    },
}
