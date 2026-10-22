return {
	{
		"folke/tokyonight.nvim",

		lazy = false,
		priority = 1000,

		opts = {
			-- style: night, storm, day, moon
			style = "night",
			transparent = true,

			-- disable italics
			styles = {
				comments = { italic = false },
				keywords = { italic = false },
			},
		},
	},
	{
		"navarasu/onedark.nvim",

		lazy = true,
		priority = 1000,

		opts = {
			-- style: dark, darker, cool, deep, warm, warmer and ligh
			style = "darker",
			transparent = true,

			-- disable italics
			code_style = {
				comments = "none",
			},
		},
	},
}
