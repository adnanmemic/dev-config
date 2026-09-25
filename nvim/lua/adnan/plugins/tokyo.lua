return {
	"folke/tokyonight.nvim",

	-- configs
	config = function()
		require("tokyonight").setup({
			style = "night",
			transparent = true,
		})
		vim.cmd.colorscheme("tokyonight")
	end,
}
