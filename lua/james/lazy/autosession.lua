return {
    "rmagatti/auto-session",
    config = function()
        require("auto-session").setup({})

        vim.o.sessionoptions="blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
    end,
}
