-- Execute Linters check
return {
	"mfussenegger/nvim-lint",
	event = "BufWritePost",
	config = function()
		require("lint").linters_by_ft = {
			python = {
				"pylint",
			},
			lua = {
				"luacheck",
			},
			markdown = {
				"markdownlint",
			},
			javascript = {
				"eslint_d",
			},
			sh = {
				"shellcheck",
			},
		}
		local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

		-- Automatically run linters after saving.  Use "InsertLeave" for more aggressive linting.
		vim.api.nvim_create_autocmd({ "BufWritePost", "InsertLeave" }, {
			group = lint_augroup,
			pattern = { "*.py" },
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
