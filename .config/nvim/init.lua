vim.cmd([[ let g:coq_settings = { 'auto_start': 'shut-up', 'keymap.pre_select': v:true}]])
require("config")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.o.termguicolors = true
vim.g.vimtex_view_method='zathura'
require("lazy").setup("plugins")
