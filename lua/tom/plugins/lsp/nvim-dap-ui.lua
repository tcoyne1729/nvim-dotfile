-- A default "GUI" front-end for nvim-dap
return {
	"rcarriga/nvim-dap-ui",
	config = function()
		require("dapui").setup()

		-- Note: Added this <leader>dd duplicate of <F5> because somehow the <F5>
		-- mapping keeps getting reset each time I restart nvim-dap. Annoying but whatever.
		--
		vim.keymap.set("n", "<leader>dd", function()
			require("dapui").open() -- Requires nvim-dap-ui

			vim.cmd([[DapContinue]]) -- Important: This will lazy-load nvim-dap
		end)
		vim.keymap.set("n", "<leader>dtog", function()
			require("dapui").toggle()
		end)
	end,
	dependencies = {
		"mfussenegger/nvim-dap",
		"mfussenegger/nvim-dap-python", -- Optional adapter for Python
	},
}
