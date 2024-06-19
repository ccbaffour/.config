-- Colorscheme configuration
return {
	-- Catppuccin theme
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		config = function()
			vim.cmd.colorscheme("catppuccin")
		end,
	},

	-- Tokyonight colorscheme
	{
		"folke/tokyonight.nvim",
		priority = 1000, -- Make sure to load this before all the other start plugins.
		config = function()
			-- vim.cmd.colorscheme 'tokyonight-night'
			--      vim.cmd.hi 'Comment gui=none'
		end,
	},
}
