return {
	"mfussenegger/nvim-dap",
	ft = { "python" },
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"nvim-neotest/nvim-nio",
		"mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")

		require("dapui").setup()
		require("dap-python").setup("python")

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		vim.keymap.set("n", "<Leader>bt", dap.toggle_breakpoint, { silent = true, desc = "Set breakpoint (Debugging)" })
		vim.keymap.set(
			"n",
			"<Leader>bc",
			dap.continue,
			{ silent = true, desc = "Run till next breakpoint (Debugging)" }
		)
	end,
}
