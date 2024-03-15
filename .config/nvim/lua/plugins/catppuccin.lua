return {
	"catppuccin/nvim", name = "catppuccin", priority = 1000,
	config = function(plugin) 
		vim.cmd("colorscheme catppuccin")
	end
}
