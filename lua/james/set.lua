vim.opt.termguicolors = true
vim.opt.mouse = ''

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.smartindent = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false

vim.opt.colorcolumn = "80"

vim.opt.cursorline = true

vim.opt.shell = '"C:/Program Files/Git/bin/bash.exe"'
vim.opt.shellcmdflag = "-s"

vim.opt.updatetime = 50

vim.opt.guicursor = ""

vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.backup = false

vim.o.fillchars = 'eob: ,fold: ,foldopen:,foldsep: ,foldclose:'
vim.o.foldcolumn = '1'
vim.o.foldenable = true
vim.o.foldexpr = 'v:lua.vim.lsp.foldexpr()'
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldmethod = 'expr'
