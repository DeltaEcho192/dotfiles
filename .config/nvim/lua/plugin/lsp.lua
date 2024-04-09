--vim.cmd([[let g:coq_settings = { 'auto_start': v:true , 'keymap.pre_select':v:true}]])

local lsp_zero = require('lsp-zero')
--local coq = require "coq"


lsp_zero.on_attach(function(client, bufnr)
  lsp_zero.default_keymaps({buffer = bufnr})
end)

lsp_zero.extend_cmp()

-- And you can configure cmp even more, if you want to.
local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
	formatting = lsp_zero.cmp_format({details = true}),
	mapping = cmp.mapping.preset.insert({
		['<CR>'] = cmp.mapping.confirm({select = true}),
		['<C-space>'] = cmp.mapping.complete(),
		['<C-u>'] = cmp.mapping.scroll_docs(-4),
		['<C-d>'] = cmp.mapping.scroll_docs(4),
		['<C-f>'] = cmp_action.luasnip_jump_forward(),
		['<C-b>'] = cmp_action.luasnip_jump_backward(),
	})
})

require('lspconfig').clangd.setup({})
