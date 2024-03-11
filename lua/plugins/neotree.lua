return {
	"nvim-neo-tree/neo-tree.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},

	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			popup_border_style = "rounded",
			enable_git_status = true,
			enable_diagnostics = true,
			sort_case_insensitive = true,
			sort_function = function(a, b)
				if a.type == b.type then
					return a.path < b.path
				else
					return a.type < b.type
				end
			end, -- this sorts files and directories descendantly
			default_component_configs = {
				git_status = {
					symbols = {
						added = "✚",
						modified = "",
						deleted = "✖",
						renamed = "󰁕",
						untracked = "",
						ignored = "",
						unstaged = "󰄱",
						staged = "",
						conflict = "",
					},
				},
				container = {
					enable_character_fade = true,
				},
				file_size = {
					enabled = true,
					required_width = 64,
				},
				type = {
					enabled = true,
					required_width = 122,
				},
				last_modified = {
					enabled = true,
					required_width = 88,
				},
				created = {
					enabled = true,
					required_width = 110,
				},
				symlink_target = {
					enabled = false,
				},
			},
			window = {
				width = 25,
			},
			filesystem = {
				filtered_items = {
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
					hide_by_name = {
						--"node_modules"
					},
					hide_by_pattern = {
						--"*/src/*/tsconfig.json",
					},
					always_show = {
						--".gitignored",
					},
					never_show = {
						--".DS_Store",
						--"thumbs.db"
					},
					never_show_by_pattern = {
						--".null-ls_*",
					},
				},
			},
		})

		vim.keymap.set("n", "<Leader>n", ":Neotree left toggle<CR>")
	end,
}
