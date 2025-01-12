-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local out = vim.fn.system({ 
        "git", 
        "clone", 
        "--filter=blob:none", 
        "--branch=stable", 
        "https://github.com/folke/lazy.nvim.git", 
        lazypath,
    })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
        { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
        { out, "WarningMsg" },
        { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
    spec = "james.lazy",
    change_detection = { notify = false },
    -- Configure any other settings here. See the documentation for more details.
    -- colorscheme that will be used when installing plugins.
    install = { colorscheme = { "serene" } },
    -- automatically check for plugin updates
    checker = { enabled = true,  notify = false },
    ui  = { border = "single", backdrop =  95 },
})
