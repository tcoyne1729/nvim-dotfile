return {
	"Pocco81/true-zen.nvim",
	config = function()
		require("true-zen").setup({
			-- your config goes here
			-- or just leave it empty :)
		})
		local truezen = require("true-zen")
		local keymap = vim.keymap

		keymap.set("n", "<leader>zn", function()
			local first = 0
			local last = vim.api.nvim_buf_line_count(0)
			truezen.narrow(first, last)
		end, { noremap = true })
		keymap.set("v", "<leader>zn", function()
			local first = vim.fn.line("v")
			local last = vim.fn.line(".")
			truezen.narrow(first, last)
		end, { noremap = true, desc = "Zen mode narrow" })
		keymap.set("n", "<leader>zf", truezen.focus, { noremap = true, desc = "Zen mode focus" })
		keymap.set("n", "<leader>zm", truezen.minimalist, { noremap = true, desc = "Zen mode minimalist" })
		keymap.set("n", "<leader>za", truezen.ataraxis, { noremap = true, desc = "Zen mode Ataraxis" })
	end,
}
