local configs = require("nvim-treesitter.configs")

configs.setup({
	ensure_installed = { "c", "lua", "cpp", "rust", "java", "vim", "vimdoc", "query", "html" },
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})

