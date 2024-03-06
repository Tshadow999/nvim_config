return {
	{
		"nvim-treesitter/nvim-treesitter",

		dependencies = {
			"nvim-treesitter/nvim-treesitter-context",
		},
		build = ":TSUpdate",
		config = function()
			local config = require("nvim-treesitter.configs")
			---@diagnostic disable-next-line: missing-fields
			config.setup({
				ensure_installed = { "bash", "c", "html", "lua", "markdown", "vim", "vimdoc" },
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
			})
		end,
	},
}
