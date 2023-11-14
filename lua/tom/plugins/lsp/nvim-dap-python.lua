-- TODO: Make sure that debugpy is installed. Otherwise, disable
-- Reference: https://github.com/mfussenegger/nvim-dap-python#installation
--
return {
	"mfussenegger/nvim-dap-python",
	after = "venv-selector",
	event = "VeryLazy", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
	config = function()
		local venv_path = require("venv-selector").get_active_path()
		require("dap-python").setup(venv_path)
		-- An example configuration to launch any Python file, via Houdini
		-- table.insert(
		--     require("dap").configurations.python,
		--     {
		--         type = "python",
		--         request = "launch",
		--         name = "Launch Via hython",
		--         program = "${file}",
		--         python = "/opt/hfs19.5.569/bin/hython"
		--         -- ... more options, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings
		--     }
		-- )
	end,
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-treesitter/nvim-treesitter",
		"linux-cultist/venv-selector.nvim",
	},
}
