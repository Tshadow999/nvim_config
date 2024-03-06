return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua", -- Lua nvim specific autocompletions
		"hrsh7th/cmp-buffer", -- completions for current buffer
		"hrsh7th/cmp-path", -- path style completions
	},

	config = function()
		local cmp = require("cmp")
		local ls = require("luasnip")

		ls.config.setup({})

		require("luasnip.loaders.from_vscode").lazy_load()

		cmp.setup({
			snippet = {
				expand = function(args)
					ls.lsp_expand(args.body)
				end,
			},
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				-- for selecting which snippet to choose
				["<C-n>"] = cmp.mapping.select_next_item(),
				["<C-p>"] = cmp.mapping.select_prev_item(),

				-- To scroll through the docs
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),

				["<C-Space>"] = cmp.mapping.complete(),
				["<C-y>"] = cmp.mapping.confirm({ select = true }),
				["<ESC>"] = cmp.mapping.abort(),

				-- To move from 1 part of the snippet to the next and back
				["<C-l>"] = cmp.mapping(function()
					if ls.expand_or_locally_jumpable() then
						ls.expand_or_jump()
					end
				end, { "i", "s" }),
				["<C-h>"] = cmp.mapping(function()
					if ls.locally_jumpable(-1) then
						ls.jump(-1)
					end
				end, { "i", "s" }),
			}),

			formatting = {
				fields = { "menu", "abbr", "kind" },
				format = function(entry, item)
					local menu_icon = {
						nvim_lua = "",
						nvim_lsp = "",
						luasnip = "λ",
						buffer = "Ω",
						path = "🖫",
					}

					item.menu = menu_icon[entry.source.name]
					return item
				end,
			},

			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "luasnip" },
				{ name = "path" },
			}, {
				-- keyword_length: after how many characters the autocomplete kicks in
				{ name = "buffer", keyword_length = 5 },
			}),
		})
	end,
}
