require("anthony")

vim.o.termguicolors = true
vim.g.vimtex_view_method='zathura'

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

require("mason").setup()
require("mason-lspconfig").setup()
