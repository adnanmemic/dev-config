return {
    "mason-org/mason-lspconfig.nvim",

    dependencies = {
		"mason-org/mason.nvim",
		"neovim/nvim-lspconfig",
		-- needed to jump to definitions in Java library code
		"mfussenegger/nvim-jdtls",
    },

	-- configs
	config = function()
		require("mason").setup()

		-- configs for lua language server
		vim.lsp.config("lua_ls", {
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})

		require("mason-lspconfig").setup({
			ensure_installed = {
				"jdtls",
				"lua_ls",
			},
			automatic_enable = {
				exclude = { "jdtls" },
			},

		})

		-- start jdtls for Java files
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "java",
			callback = function()
				require("jdtls").start_or_attach({
					cmd = { "jdtls" },
					root_dir = vim.fs.root(0, {
						".git",
						"pom.xml",
						"mvnw",
					}),
				})
			end,
		})

		-- keymaps
		vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition)
		vim.keymap.set("n", "gr", vim.lsp.buf.references)
		vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
		vim.keymap.set("n", "K", vim.lsp.buf.hover)

		vim.keymap.set("n", "<leader>a", vim.lsp.buf.code_action)
		vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
		vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)
	end
}
