return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
	keys = {
		{
			"<leader>tps",
			ft = "markdown",
			"<cmd>MarkdownPreviewToggle<cr>",
			desc = "Markdown Preview",
		},
		{
			"<leader>tpt",
			ft = "markdown",
			"<cmd>MarkdownPreviewStop<cr>",
			desc = "Stop Markdown Preview",
		},
	},
	config = function()
		vim.cmd([[do FileType]])

		-- Auto-close preview when buffer closes
		vim.g.mkdp_auto_close = 0

		-- Default browser
		vim.cmd([[
         function OpenMarkdownPreview (url)
            let cmd = "google-chrome --guest --new-window " . shellescape(a:url) . " &"
            silent call system(cmd)
         endfunction
      ]])
		vim.g.mkdp_browserfunc = "OpenMarkdownPreview"

		-- Dark mode
		vim.g.mkdp_theme = "dark"

		-- Reuse preview tabs
		vim.g.mkdp_combine_preview = 0
	end,

	opts = {},
}
