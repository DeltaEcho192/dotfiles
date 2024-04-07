local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = { "c", "lua", "rust", "java", "vim", "vimdoc", "query", "javascript", "html" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})

