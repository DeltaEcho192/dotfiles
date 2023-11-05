local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').pylsp.setup( {
  on_attach = on_attach,
  settings = {
    -- configure plugins in pylsp
    pylsp = {
      plugins = {
        pyflakes = {enabled = false},
        pylint = {enabled = false},
      },
    },
  },
})

lsp.setup()
