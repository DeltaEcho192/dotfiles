vim.cmd([[let g:coq_settings = { 'auto_start': v:true , 'keymap.pre_select':v:true}]])
local lsp_zero = require('lsp-zero')
local coq = require "coq"

lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require('lspconfig').clangd.setup(coq.lsp_ensure_capabilities({}))
