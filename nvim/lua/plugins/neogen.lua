return {
	"danymat/neogen",
	config = function()
		require("neogen").setup({
			snippet_engine = "luasnip",
			enabled = true,
			languages = {
				lua = {
					template = {
						annotation_convention = "ldoc",
					},
				},
				python = {
					template = {
						annotation_convention = "google_docstrings",
					},
				},
				rust = {
					template = {
						annotation_convention = "rustdoc",
					},
				},
				javascript = {
					template = {
						annotation_convention = "jsdoc",
					},
				},
				typescript = {
					template = {
						annotation_convention = "tsdoc",
					},
				},
				typescriptreact = {
					template = {
						annotation_convention = "tsdoc",
					},
				},
			},
		})

		-- Keymaps
		vim.keymap.set("n", "<leader>tu", ":Neogen func<cr>", { silent = true, desc = "Generate docstring (function)" })
		vim.keymap.set("n", "<leader>tc", ":Neogen class<cr>", { silent = true, desc = "Generate docstring (class)" })
		vim.keymap.set("n", "<leader>ty", ":Neogen type<cr>", { silent = true, desc = "Generate docstring (variable)" })
		vim.keymap.set("n", "<leader>ts", ":Neogen file<cr>", { silent = true, desc = "Generate docstring (pylint)" })
	end,
	disable = false,
}
