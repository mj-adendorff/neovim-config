return {
	enabled = false,
	"hrsh7th/nvim-cmp",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-nvim-lua",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"saadparwaiz1/cmp_luasnip",
		"L3MON4D3/LuaSnip",
	},
	config = function()
		local cmp = require("cmp")
		vim.opt.completeopt = { "menu", "menuone", "noselect" }

		cmp.setup({
			snippet = {
				expand = function(args)
					require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
				end,
			},
			window = {
				-- completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
				["<S-Tab>"] = cmp.mapping({
					c = function()
						if cmp.visible() then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
						else
							cmp.complete()
						end
					end,
					i = function(fallback)
						if cmp.visible() then
							cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
						elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
							vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
						else
							fallback()
						end
					end,
					s = function(fallback)
						if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
							vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), "m", true)
						else
							fallback()
						end
					end,
				}),
				["<C-b>"] = cmp.mapping.scroll_docs(-4),
				["<C-f>"] = cmp.mapping.scroll_docs(4),
				["<C-Space>"] = cmp.mapping.complete(),
				["<C-e>"] = cmp.mapping.abort(),
				["<CR>"] = cmp.mapping.confirm({ select = false }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = cmp.config.sources({
				{ name = "nvim_lsp" },
				{ name = "nvim_lua" },
				{ name = "luasnip" }, -- For luasnip users.
				-- { name = "orgmode" },
			}, {
				{ name = "buffer" },
				{ name = "path" },
			}),
		})

		cmp.setup.cmdline(":", {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = "path" },
			}, {
				{ name = "cmdline" },
			}),
		})
	end,
}
