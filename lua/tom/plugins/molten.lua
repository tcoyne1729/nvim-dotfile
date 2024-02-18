return {
	-- python -m ipykernel install --user --name env1 --display-name env1
	{
		"benlubas/molten-nvim",
		version = "^1.0.0", -- use version <2.0.0 to avoid breaking changes
		dependencies = { "3rd/image.nvim" },
		build = ":UpdateRemotePlugins",
		init = function()
			-- these are examples, not defaults. Please see the readme
			vim.g.molten_image_provider = "image.nvim"
			vim.g.molten_output_win_max_height = 20
		end,
		config = function()
			vim.keymap.set("n", "<leader>mi", "<cmd>MoltenInit<CR>", { silent = true, desc = "Initialize the plugin" })
			vim.keymap.set(
				"n",
				"<leader>mr",
				"<cmd>MoltenEvaluateOperator<CR>",
				{ silent = true, desc = "run operator selection" }
			)
			vim.keymap.set("n", "<leader>ml", ":MoltenEvaluateLine<CR>", { silent = true, desc = "evaluate line" })
			vim.keymap.set(
				"n",
				"<localleader>mrr",
				":MoltenReevaluateCell<CR>",
				{ silent = true, desc = "re-evaluate cell" }
			)
			vim.keymap.set(
				"v",
				"<leader>mv",
				":<C-u>MoltenEvaluateVisual<CR>gv",
				{ silent = true, desc = "evaluate visual selection" }
			)
		end,
	},
	-- {
	-- 	-- see the image.nvim readme for more information about configuring this plugin
	-- 	"3rd/image.nvim",
	-- 	opts = {
	-- 		backend = "kitty", -- whatever backend you would like to use
	-- 		max_width = 100,
	-- 		max_height = 12,
	-- 		max_height_window_percentage = math.huge,
	-- 		max_width_window_percentage = math.huge,
	-- 		window_overlap_clear_enabled = true, -- toggles images when windows are overlapped
	-- 		window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
	-- 	},
	-- },
}
