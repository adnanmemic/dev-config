-- set theme
-- themes: palenight, onedark
local theme = "auto"

return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	-- configs
	config = function()
		require("lualine").setup({
			options = {
				theme = theme,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						"branch",
						separator = "",
					},
					"diff",
				},
				lualine_c = {
					{
						"filename",
						path = 1, -- enable relative path view
					},
				},
				lualine_x = {
					{
						"filetype",
						colored = true,
						icon_only = true,
					},
                    "diagnostics",
				},
				lualine_y = {
					{
						"progress",
						separator = "",
					},
					"location",
				},
				lualine_z = {
					{
						"datetime",
						style = " %H:%M",
					},
				},
			},
		})
	end,
}
