return {
	-- nvim-cmp core plugin
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter", -- Carga al entrar en modo Insertar
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"quangnguyen30192/cmp-nvim-ultisnips",
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				mapping = {
					["<C-Space>"] = cmp.mapping.complete(), -- Mapeo para completar manualmente
				},
				sources = {
					{ name = "buffer" },
					{ name = "nvim_lsp" },
					{ name = "ultisnips" },
				},
			})
		end,
	},
	-- Dependencies
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "quangnguyen30192/cmp-nvim-ultisnips" },
}

