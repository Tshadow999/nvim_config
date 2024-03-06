return {
	"tpope/vim-fugitive",

	dependencies = {
		"lewis6991/gitsigns.nvim",
	},

    config = function()
		require("gitsigns").setup({
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "X" },
				topdelete = { text = "X" },
				changedelete = { text = "X" },
				untracked = { text = "|" },
			},

			signcolumn = true, -- Toggle with `:Gitsigns toggle_signs`

			auto_attach = true,
			attach_to_untracked = false,

			current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
			current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",

			sign_priority = 6,
			update_debounce = 100,
			status_formatter = nil, -- Use default
			max_file_length = 40000, -- Disable if file is longer than this (in lines)
			preview_config = {
				border = "single",
				style = "minimal",
				relative = "cursor",
				row = 0,
				col = 1,
			},
			yadm = {
				enable = false,
			},
		})
	end,
}
