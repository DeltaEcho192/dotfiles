return {
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    lazy = true,
    config = false,
    init = function()
      -- Disable automatic setup, we are doing it manually
      vim.g.lsp_zero_extend_cmp = 0
      vim.g.lsp_zero_extend_lspconfig = 0
    end,
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    config = true,
  },

	--[[
  -- Autocompletion
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {'L3MON4D3/LuaSnip'},
    },
    config = function()
      -- Here is where you configure the autocompletion settings.
      local lsp_zero = require('lsp-zero')
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
    end
  },
	]]
  -- LSP
  {
    'neovim/nvim-lspconfig',
    cmd = {'LspInfo', 'LspInstall', 'LspStart'},
    event = {'BufReadPre', 'BufNewFile'},
    dependencies = {
      {'ms-jpq/coq_nvim'},
      {'ms-jpq/coq.artifacts'},
      {'williamboman/mason-lspconfig.nvim'},
    },
		config = function ()
			vim.cmd([[ let g:coq_settings = { 'auto_start': 'shut-up', 'keymap.pre_select': v:true}]])
			local lsp_zero = require('lsp-zero')
			require('mason').setup({});
			require('mason-lspconfig').setup({})
			local coq = require("coq")

			lsp_zero.on_attach(function(client, bufnr)
				lsp_zero.default_keymaps({buffer = bufnr})
			end)
			require('lspconfig').lua_ls.setup(coq.lsp_ensure_capabilities({}))
			require('lspconfig').clangd.setup(coq.lsp_ensure_capabilities({}))
			require('lspconfig').rust_analyzer.setup(coq.lsp_ensure_capabilities({}))
		end
  }
}
