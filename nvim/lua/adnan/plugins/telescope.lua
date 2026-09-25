return {
	"nvim-telescope/telescope.nvim",
	version = "*",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
	},

	-- configs
	config = function()
		require("telescope").setup({})

		vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags)
		vim.keymap.set("n", "<C-p>", require("telescope.builtin").find_files)
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
	end,
}
