return {
    "rmagatti/auto-session",
    config = function()
        require("auto-session").setup({})

        vim.o.sessionoptions="blank,buffers,curdir,folds,terminal,help,tabpages,winsize,winpos,localoptions"
    end,
}
