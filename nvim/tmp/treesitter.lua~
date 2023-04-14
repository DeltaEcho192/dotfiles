  require'nvim-treesitter.configs'.setup {-- A list of parser names, or "all"
  ensure_installed = { "c", "lua", "rust", "dart", "java", "dockerfile", "javascript"},
  -- Install parsers synchronously (only applied to `ensure_installed`)

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,


  highlight = {
    -- `false` will disable the whole extension
    enable = true,
--	disable = function(lang, buf)
--		local max_filesize = 40 * 1024 -- 30KB
--		local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
--		if ok and stats and stats.size > max_filesize then
--			return true
--		end
--	end,
    additional_vim_regex_highlighting = false,
  },
}

