return {
	{
		"Shatur/neovim-ayu",

		config = function()
			vim.cmd("colorscheme ayu-dark")
		end,
	},

	{
		-- Not really a colorscheme but highlights:
		-- TODO: some text
		-- NOTE: some more text
		-- BUG: error report
		-- HACK: for more check github
		"folke/todo-comments.nvim",
		event = "VimEnter",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = { signs = false },
	},
}
