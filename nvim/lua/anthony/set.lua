vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false 

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = true
vim.opt.directory = os.getenv("HOME") .. "/.config/nvim/tmp"
vim.opt.backupdir = os.getenv("HOME") .. "/.config/nvim/tmp"
vim.opt.backup = true 

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
