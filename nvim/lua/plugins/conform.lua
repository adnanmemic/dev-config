return {
	"stevearc/conform.nvim",

	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format" },
			c = { "clang-format" },
			cpp = { "clang-format" },
			html = { "prettier" },
			css = { "prettier" },
			javascript = { "prettier" },
			javascriptreact = { "prettier" },
			json = { "prettier" },
			jsonc = { "prettier" },
			yaml = { "prettier" },
		},

		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},

		formatters = {
			["clang-format"] = {
				prepend_args = { "--style=file", "--fallback-style=Microsoft" },
			},
		},
	},
}
