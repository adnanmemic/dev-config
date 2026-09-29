-- set themetheme
-- themes: tokyonight, onedark
local theme = "tokyonight"

return {
	{
		"folke/tokyonight.nvim",

		enabled = theme == "tokyonight",
		lazy = false,
		priority = 1000,

		-- configs
		config = function()
			require("tokyonight").setup({
				-- style: night, storm, day, moon
				style = "night",
				transparent = true,

				-- disable italics
				styles = {
					comments = { italic = false },
					keywords = { italic = false },
				},
			})

			vim.cmd.colorscheme(theme)
		end,
	},
	{
		"navarasu/onedark.nvim",

		enabled = theme == "onedark",
		lazy = false,
		priority = 1000,

		-- configs
		config = function()
			require("onedark").setup({
				-- style: dark, darker, cool, deep, warm, warmer and ligh
				style = "darker",
				transparent = true,

				-- disable italics
				code_style = {
					comments = "none",
				},
			})

			vim.cmd.colorscheme(theme)
		end,
	},
}
