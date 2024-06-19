-- Auto-completion of bracket/paren/quote pairs
return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = true,
	opts = {
		check_ts = true, -- enable treesitter
		ts_config = {
			lua = { "string" }, -- don't add pairs in lua string treesitter nodes
			javascript = { "template_string" }, -- don't add pairs in javascript template_string
		},
	},
}
