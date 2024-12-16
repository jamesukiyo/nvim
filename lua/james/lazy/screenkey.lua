return {
    "NStefan002/screenkey.nvim",
    lazy = false,
    branch = "dev",

    config = function()
        require("screenkey").setup({
            win_opts = {
                title = "",
                width = 30,
                border = "rounded",
            },
            clear_after = 5,
            group_mappings = true,
            filter = function(keys)
                return keys
            end,
            keys = {
                ["<TAB>"] = "󰌒",
                ["<CR>"] = "󰌑",
                ["<ESC>"] = "Esc",
                ["<SPACE>"] = "␣",
                ["<BS>"] = "󰌥",
                ["<DEL>"] = "Del",
                ["<LEFT>"] = "",
                ["<RIGHT>"] = "",
                ["<UP>"] = "",
                ["<DOWN>"] = "",
                ["<HOME>"] = "Home",
                ["<END>"] = "End",
                ["<PAGEUP>"] = "PgUp",
                ["<PAGEDOWN>"] = "PgDn",
                ["<INSERT>"] = "Ins",
                ["<F1>"] = "󱊫",
                ["<F2>"] = "󱊬",
                ["<F3>"] = "󱊭",
                ["<F4>"] = "󱊮",
                ["<F5>"] = "󱊯",
                ["<F6>"] = "󱊰",
                ["<F7>"] = "󱊱",
                ["<F8>"] = "󱊲",
                ["<F9>"] = "󱊳",
                ["<F10>"] = "󱊴",
                ["<F11>"] = "󱊵",
                ["<F12>"] = "󱊶",
                ["CTRL"] = "Ctrl",
                ["ALT"] = "Alt",
                ["SUPER"] = "󰘳",
                ["<leader>"] = "<leader>",
            },
        })
        vim.cmd("Screenkey")
    end
}
